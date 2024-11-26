<?php

namespace App\Http\Controllers;

use App\Models\Calificacion;
use App\Models\Corriente;
use Illuminate\Support\Facades\DB;
use App\Models\Mensaje;
use App\Models\Patologia;
use Illuminate\Http\Request;
use App\Models\Psicologo;
use App\Models\Sesion;
use App\Models\Tematica;
use Illuminate\Support\Facades\Auth;

class PsychologistController extends Controller
{
    public function getCorrientes()
    {
        $corrientes = Corriente::all();
        return response()->json($corrientes);
    }

    public function getTematicas()
    {
        $tematicas = Tematica::all();
        return response()->json($tematicas);
    }

    public function getPatologias()
    {
        $patologias = Patologia::all();
        return response()->json($patologias);
    }
    public function search(Request $request)
    {
        $searchTerm = $request->query('search');
        $corriente = $request->query('corriente');
        $tematica = $request->query('tematica');
        $patologias = $request->query('patologias') ? explode(',', $request->query('patologias')) : null;

        $query = Psicologo::with(['patologias', 'corriente', 'tematica']);

        // Aplicar filtros básicos
        if ($searchTerm) {
            $query->where(function ($q) use ($searchTerm) {
                if (is_numeric($searchTerm)) {
                    $q->where('matricula', $searchTerm);
                } else {
                    $q->where('nombre', 'LIKE', "%{$searchTerm}%")
                        ->orWhere('apellido', 'LIKE', "%{$searchTerm}%");
                }
            });
        }

        if ($corriente) {
            $query->where('id_corriente', $corriente);
        }

        if ($tematica) {
            $query->where('id_tematica', $tematica);
        }

        // Obtener psicólogos y calcular coincidencias
        $psicologos = $query->get()->map(function ($psicologo) use ($patologias) {
            $coincidencias = 0;

            // Calcular coincidencias de patologías
            if ($patologias) {
                $patologiasDelPsicologo = $psicologo->patologias->pluck('id_patologia')->toArray();
                $coincidencias = count(array_intersect($patologias, $patologiasDelPsicologo));
            }

            return [
                'matricula' => $psicologo->matricula,
                'nombre' => $psicologo->nombre,
                'apellido' => $psicologo->apellido,
                'email' => $psicologo->email,
                'promedio' => $psicologo->promedio ?? 0,
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
                ],
                'coincidencias' => $coincidencias
            ];
        });

        // Ordenar resultados
        $psicologosOrdenados = $psicologos->sortBy(function ($psicologo) {
            // Orden inverso: más coincidencias primero, luego mejor promedio
            return [-$psicologo['coincidencias'], -$psicologo['promedio']];
        })->values();

        return response()->json($psicologosOrdenados);
    }
    public function index()
    {
        $psicologos = Psicologo::with(['patologias', 'corriente', 'tematica'])->get()
            ->map(function ($psicologo) {
                return [
                    'matricula' => $psicologo->matricula,
                    'nombre' => $psicologo->nombre,
                    'apellido' => $psicologo->apellido,
                    'email' => $psicologo->email,
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

        return response()->json($psicologos);
    }
    public function getMessages()
    {
        $psicologo = Auth::user();

        $mensajes = Mensaje::with('paciente')
            ->where('matricula_psicologo', $psicologo->matricula)
            ->get();

        return response()->json($mensajes);
    }

    public function takePatient(Request $request)
    {
        $request->validate([
            'dni_paciente' => 'required|integer|exists:paciente,dni',
        ]);

        $psicologo = Auth::user();
        $dniPaciente = $request->input('dni_paciente');

        $exists = DB::table('psicologo_paciente')
            ->where('dni_paciente', $dniPaciente)
            ->where('matricula_psicologo', $psicologo->matricula)
            ->exists();

        if ($exists) {
            return response()->json(['message' => 'Ya existe una relación con este paciente'], 409);
        }

        DB::table('psicologo_paciente')->insert([
            'matricula_psicologo' => $psicologo->matricula,
            'dni_paciente' => $dniPaciente,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return response()->json(['message' => 'Paciente tomado exitosamente'], 201);
    }

    public function getPacientesDNI()
    {
        $psicologo = Auth::user();
        $dniPacientes = DB::table('psicologo_paciente')
            ->where('matricula_psicologo', $psicologo->matricula)
            ->pluck('dni_paciente');

        return response()->json($dniPacientes);
    }

    public function getPsychologistRatings($matricula)
    {

        $ratings = Calificacion::where('matricula_psicologo', $matricula)
            ->with('paciente')
            ->get();

        $averageRating = $ratings->isEmpty() ? 0 : $ratings->avg('valor');

        $psychologist = Psicologo::where('matricula', $matricula)->first();
        if ($psychologist) {
            $psychologist->promedio = $averageRating ?? 0;
            $psychologist->save();
        }

        return response()->json([
            'ratings' => $ratings,
            'average' => $averageRating,
            'psychologist' => [
                'nombre' => $psychologist->nombre,
                'apellido' => $psychologist->apellido
            ]
        ]);
    }

    public function getSesionesByPaciente($dni_paciente)
    {
        $psicologo = Auth::user();

        $sesiones = Sesion::where('matricula_psicologo', $psicologo->matricula)
            ->where('dni_paciente', $dni_paciente)
            ->orderBy('fecha', 'desc')
            ->orderBy('hora', 'desc')
            ->with('paciente')
            ->get();

        return response()->json($sesiones);
    }

    public function getMisPacientes()
    {
        $psicologo = Auth::user();

        $pacientes = DB::table('psicologo_paciente')
            ->join('paciente', 'psicologo_paciente.dni_paciente', '=', 'paciente.dni')
            ->where('matricula_psicologo', $psicologo->matricula)
            ->where('actual', true)
            ->select('paciente.*')
            ->get();

        return response()->json($pacientes);
    }
}
