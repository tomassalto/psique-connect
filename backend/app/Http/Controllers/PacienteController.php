<?php

namespace App\Http\Controllers;

use App\Models\Calificacion;
use App\Models\Preferencia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Psicologo;
use Carbon\Carbon;

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
        $patologia = $request->input('patologia');


        if (is_null($tematica) || is_null($corriente) || is_null($patologia)) {
            return response()->json(['error' => 'Datos incompletos'], 400);
        }


        $preferencias = Preferencia::where('dni_paciente', $paciente->dni)->first();

        if ($preferencias) {

            $preferencias->id_tematica = $tematica;
            $preferencias->id_corriente = $corriente;
            $preferencias->id_patologia = $patologia;
            $preferencias->save();
        } else {

            $preferencias = new Preferencia();
            $preferencias->dni_paciente = $paciente->dni;
            $preferencias->id_tematica = $tematica;
            $preferencias->id_corriente = $corriente;
            $preferencias->id_patologia = $patologia;
            $preferencias->save();
        }


        $paciente->onboarding = true;
        $paciente->save();

        DB::table('match')->where('dni_paciente', $paciente->dni)->delete();


        $psicologos = Psicologo::with(['patologia', 'corriente', 'tematica'])
            ->where('id_tematica', $tematica)
            ->orWhere('id_corriente', $corriente)
            ->orWhere('id_patologia', $patologia)
            ->orderByRaw("
            (id_tematica = ? AND id_corriente = ? AND id_patologia = ?) DESC, 
            (id_tematica = ? AND id_corriente = ?) DESC, 
            (id_tematica = ? AND id_patologia = ?) DESC
        ", [
                $tematica,
                $corriente,
                $patologia,
                $tematica,
                $corriente,
                $tematica,
                $patologia
            ])
            ->limit(5)
            ->get();


        foreach ($psicologos as $psicologo) {
            DB::table('match')->insert([
                'dni_paciente' => $paciente->dni,
                'matricula_psicologo' => $psicologo->matricula,
            ]);
        }


        return response()->json($psicologos);
    }


    public function obtenerMatches()
    {
        $paciente = auth()->user();


        $matches = DB::table('match')
            ->join('psicologo', 'match.matricula_psicologo', '=', 'psicologo.matricula')
            ->join('patologia', 'psicologo.id_patologia', '=', 'patologia.id_patologia')
            ->join('corriente', 'psicologo.id_corriente', '=', 'corriente.id_corriente')
            ->join('tematica', 'psicologo.id_tematica', '=', 'tematica.id_tematica')
            ->where('match.dni_paciente', $paciente->dni)
            ->select(
                'psicologo.*',
                'patologia.nombre as nombre_patologia',
                'corriente.nombre as nombre_corriente',
                'tematica.nombre as nombre_tematica'
            )
            ->get();

        return response()->json($matches);
    }

    public function getUserPreferences($dni_paciente)
    {
        $preferencias = Preferencia::where('dni_paciente', $dni_paciente)
            ->with(['tematica', 'patologia', 'corriente'])
            ->first();

        return response()->json([
            'dni_paciente' => $preferencias->dni_paciente,
            'tematica' => $preferencias->tematica ? $preferencias->tematica->nombre : null,
            'patologia' => $preferencias->patologia ? $preferencias->patologia->nombre : null,
            'corriente' => $preferencias->corriente ? $preferencias->corriente->nombre : null,
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

        DB::table('psicologo_paciente')
            ->where('dni_paciente', $paciente->dni)
            ->where('matricula_psicologo', $validated['matricula_psicologo'])
            ->update(['actual' => false]);

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
