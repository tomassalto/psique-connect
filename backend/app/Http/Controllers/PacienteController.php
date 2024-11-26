<?php

namespace App\Http\Controllers;

use App\Models\Calificacion;
use App\Models\Preferencia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Psicologo;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;
use App\Mail\RelacionTerminada;
use App\Models\Paciente;

class PacienteController extends Controller
{
    private function getCurrentDateTimeInArgentina()
    {

        return Carbon::now('America/Argentina/Buenos_Aires');
    }
    public function guardarPreferenciasYMatch(Request $request)
    {
        $paciente = auth()->user();

        $tematica = $request->input('tematica');
        $corriente = $request->input('corriente');
        $patologias = $request->input('patologias');

        if (is_null($tematica) || is_null($corriente) || empty($patologias)) {
            return response()->json(['error' => 'Datos incompletos'], 400);
        }

        $preferencias = Preferencia::updateOrCreate(
            ['dni_paciente' => $paciente->dni],
            [
                'id_tematica' => $tematica,
                'id_corriente' => $corriente,
            ]
        );

        $paciente->patologias()->sync($patologias);

        // Marcar onboarding como completado
        $paciente->onboarding = true;
        $paciente->save();

        // Eliminar matches anteriores
        DB::table('match')->where('dni_paciente', $paciente->dni)->delete();

        // Obtener psicólogos con coincidencias
        $psicologos = Psicologo::with(['patologias', 'corriente', 'tematica'])
            ->where(function ($query) use ($tematica, $corriente, $patologias) {
                // Psicólogos que coinciden en tematica
                $query->where('id_tematica', $tematica)
                    // O coinciden en corriente
                    ->orWhere('id_corriente', $corriente)
                    // O tienen alguna de las patologías seleccionadas
                    ->orWhereHas('patologias', function ($q) use ($patologias) {
                        $q->whereIn('patologia.id_patologia', $patologias);
                    });
            })
            ->get();

        // Calcular puntuación para cada psicólogo
        $psicologosConPuntaje = $psicologos->map(function ($psicologo) use ($tematica, $corriente, $patologias) {
            $puntaje = 0;

            // Coincidencia de temática
            if ($psicologo->id_tematica == $tematica) {
                $puntaje += 3;
            }

            // Coincidencia de corriente
            if ($psicologo->id_corriente == $corriente) {
                $puntaje += 3;
            }

            $patologiasCoincidentes = $psicologo->patologias
                ->whereIn('id_patologia', $patologias)
                ->count();
            $puntaje += $patologiasCoincidentes * 2;

            return [
                'psicologo' => $psicologo,
                'puntaje' => $puntaje
            ];
        })
            ->sortByDesc('puntaje')
            ->take(5);

        // Guardar los 5 mejores matches
        foreach ($psicologosConPuntaje as $match) {
            DB::table('match')->insert([
                'dni_paciente' => $paciente->dni,
                'matricula_psicologo' => $match['psicologo']->matricula,
            ]);
        }

        return response()->json($psicologosConPuntaje->pluck('psicologo'));
    }


    public function obtenerMatches()
    {
        $paciente = auth()->user();


        $matches = Psicologo::with(['patologias', 'corriente', 'tematica'])
            ->join('match', 'psicologo.matricula', '=', 'match.matricula_psicologo')
            ->where('match.dni_paciente', $paciente->dni)
            ->select('psicologo.*')
            ->get()
            ->map(function ($psicologo) {
                return [
                    'matricula' => $psicologo->matricula,
                    'nombre' => $psicologo->nombre,
                    'apellido' => $psicologo->apellido,
                    'email' => $psicologo->email,
                    'telefono' => $psicologo->telefono,
                    'promedio' => $psicologo->promedio,
                    'patologias' => $psicologo->patologias->map(function ($patologia) {
                        return [
                            'id_patologia' => $patologia->id_patologia,
                            'nombre' => $patologia->nombre
                        ];
                    }),
                    'corriente' => [
                        'id_corriente' => $psicologo->corriente->id_corriente,
                        'nombre' => $psicologo->corriente->nombre
                    ],
                    'tematica' => [
                        'id_tematica' => $psicologo->tematica->id_tematica,
                        'nombre' => $psicologo->tematica->nombre
                    ]
                ];
            });

        return response()->json($matches);
    }
    public function getUserPreferences($dni_paciente)
    {
        $preferencias = Preferencia::where('dni_paciente', $dni_paciente)
            ->with(['tematica', 'corriente'])
            ->first();

        $paciente = Paciente::with('patologias')
            ->where('dni', $dni_paciente)
            ->first();

        return response()->json([
            'dni_paciente' => $preferencias->dni_paciente,
            'tematica' => $preferencias->tematica ? $preferencias->tematica->nombre : null,
            'corriente' => $preferencias->corriente ? $preferencias->corriente->nombre : null,
            'patologias' => $paciente->patologias->map(function ($patologia) {
                return [
                    'id_patologia' => $patologia->id_patologia,
                    'nombre' => $patologia->nombre
                ];
            })
        ]);
    }

    public function ratePsychologist(Request $request)
    {
        $paciente = auth()->user();

        $validated = $request->validate([
            'matricula_psicologo' => 'required|integer',
            'valor' => 'required|numeric|min:1|max:5',
            'comentario' => 'nullable|string',
        ]);

        $calificacion = Calificacion::where('dni_paciente', $paciente->dni)
            ->where('matricula_psicologo', $validated['matricula_psicologo'])
            ->first();

        if ($calificacion) {

            $calificacion->valor = $validated['valor'];
            $calificacion->comentario = $validated['comentario'] ?? null;
            $calificacion->save();
        } else {

            $calificacion = Calificacion::create([
                'dni_paciente' => $paciente->dni,
                'matricula_psicologo' => $validated['matricula_psicologo'],
                'valor' => $validated['valor'],
                'comentario' => $validated['comentario'] ?? null,
            ]);
        }

        return response()->json(['success' => true, 'calificacion' => $calificacion]);
    }

    public function obtenerPsicologosAsociados()
    {
        $paciente = auth()->user();

        $psicologos = DB::table('psicologo_paciente')
            ->join('psicologo', 'psicologo_paciente.matricula_psicologo', '=', 'psicologo.matricula')
            ->where('psicologo_paciente.dni_paciente', $paciente->dni)
            ->select('psicologo.*', 'psicologo_paciente.actual')
            ->get();

        return response()->json($psicologos);
    }


    public function terminarRelacion(Request $request)
    {
        $paciente = auth()->user();
        $validated = $request->validate([
            'matricula_psicologo' => 'required|integer',
        ]);
        $psicologo = Psicologo::where('matricula', $validated['matricula_psicologo'])->first();
        DB::table('psicologo_paciente')
            ->where('dni_paciente', $paciente->dni)
            ->where('matricula_psicologo', $validated['matricula_psicologo'])
            ->update(['actual' => false]);

        Mail::to($psicologo->email)
            ->send(new RelacionTerminada($paciente, $psicologo));
        return response()->json(['success' => true]);
    }

    public function countPastSessions($matriculaPsicologo)
    {
        $paciente = auth()->user();
        $currentDateTime = $this->getCurrentDateTimeInArgentina();

        $sessionCount = DB::table('sesion')
            ->where('dni_paciente', $paciente->dni)
            ->where('matricula_psicologo', $matriculaPsicologo)
            ->whereDate('fecha', '<=', $currentDateTime->toDateString())
            ->where(function ($query) use ($currentDateTime) {
                $query->where('fecha', '<', $currentDateTime->toDateString())
                    ->orWhere(function ($query) use ($currentDateTime) {
                        $query->where('fecha', '=', $currentDateTime->toDateString())
                            ->where('hora', '<', $currentDateTime->toTimeString());
                    });
            })
            ->where('cancelado', false)
            ->count();

        return response()->json(['session_count' => $sessionCount]);
    }
}
