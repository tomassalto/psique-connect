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

        // Mapear valores de temáticas y corrientes
        $mapeoTematicas = [
            'Online' => 'Online',
            'Presencial' => 'Presencial',
            'Ambas' => 'Ambas',
        ];

        $mapeoCorrientes = [
            'Intervencion activa' => ['Psicoanalisis', 'Humanista', 'Terapia Integral'],
            'Escucha y apoyo' => ['Cognitivo conductual', 'Sistemica', 'Gestalt'],
            'Indiferente' => ['Psicoanalisis', 'Humanista', 'Terapia Integral', 'Cognitivo conductual', 'Sistemica', 'Gestalt'],
        ];

        $mapeoPatologias = [
            'Depresión' => ['Depresión', 'Trastorno límite de la personalidad', 'Trastorno de adaptación'],
            'Ansiedad' => ['Ansiedad', 'Trastorno de ansiedad generalizada', 'Trastorno de pánico', 'Fobias', 'Agorafobia', 'Trastorno de ansiedad social'],
            'Trastorno de pánico' => ['Trastorno de pánico', 'Trastorno de estrés agudo'],
            'Trastorno bipolar' => ['Trastorno bipolar'],
            'Esquizofrenia' => ['Esquizofrenia', 'Trastorno psicótico'],
            'TOC (Trastorno Obsesivo Compulsivo)' => ['TOC (Trastorno Obsesivo Compulsivo)', 'Trastorno de acumulación'],
            'TDAH (Déficit de Atención e Hiperactividad)' => ['TDAH (Déficit de Atención e Hiperactividad)'],
            'Duelo patológico' => ['Duelo patológico', 'Trastorno de adaptación'],
            'Agorafobia' => ['Agorafobia'],
            'Trastornos de apego' => ['Trastornos de apego', 'Trastorno de la personalidad dependiente'],
            'Trastorno de despersonalización' => ['Trastorno de despersonalización', 'Trastorno de desrealización'],
            'Fobias' => ['Fobias', 'Trastorno de ansiedad social', 'Trastorno límite de la personalidad'],
        ];

        // Validar y obtener IDs para temática y corriente
        $tematica = DB::table('tematica')->where('nombre', $mapeoTematicas[$request->input('tematica')] ?? null)->value('id_tematica');
        $corrientesNombres = $mapeoCorrientes[$request->input('corriente')] ?? [];
        $corrientesIds = DB::table('corriente')
            ->whereIn('nombre', $corrientesNombres)
            ->pluck('id_corriente')
            ->toArray();

        if (!$tematica || empty($corrientesIds)) {
            return response()->json(['error' => 'Temática o corriente inválida'], 400);
        }

        // Procesar patologías seleccionadas
        $patologiasNombres = $request->input('situacionesActuales', []);
        $patologiasConsideradas = collect($patologiasNombres)
            ->flatMap(fn($patologia) => $mapeoPatologias[$patologia] ?? [])
            ->unique()
            ->toArray();

        $patologiasIds = DB::table('patologia')
            ->whereIn('nombre', $patologiasConsideradas)
            ->pluck('id_patologia')
            ->toArray();

        // Edad y género del psicólogo
        $edadPsicologo = $request->input('edadPsicologo');
        $generoPsicologo = $request->input('generoPsicologo');

        // Validar edad y género
        if (!$edadPsicologo || !$generoPsicologo) {
            return response()->json(['error' => 'Debes seleccionar una edad y un género para tu psicólogo'], 400);
        }

        // Crear o actualizar preferencias del paciente
        $preferencia = Preferencia::updateOrCreate(
            ['dni_paciente' => $paciente->dni],
            [
                'id_tematica' => $tematica,
                'id_corriente' => $corrientesIds[0], // Guardamos la primera corriente como referencia
                'edad_psicologo' => $edadPsicologo,
                'genero_psicologo' => $generoPsicologo,
            ]
        );

        // Guardar las respuestas específicas del paciente
        DB::table('preferencias_respuestas')->where('id_preferencia', $preferencia->id)->delete();

        $respuestas = [
            [
                'pregunta' => '¿Qué tipo de modalidad prefieres?',
                'key' => 'tematica',
                'respuesta' => $request->input('tematica'),
                'label' => $this->getLabelForValue('tematica', $request->input('tematica')),
            ],
            [
                'pregunta' => '¿Qué esperas de tu terapia?',
                'key' => 'corriente',
                'respuesta' => $request->input('corriente'),
                'label' => $this->getLabelForValue('corriente', $request->input('corriente')),
            ],
            [
                'pregunta' => '¿Qué rango de edad prefieres que tenga tu psicólogo?',
                'key' => 'edadPsicologo',
                'respuesta' => $request->input('edadPsicologo'),
                'label' => $this->getLabelForValue('edadPsicologo', $request->input('edadPsicologo')),
            ],
            [
                'pregunta' => '¿De qué género prefieres que sea tu psicólogo?',
                'key' => 'generoPsicologo',
                'respuesta' => $request->input('generoPsicologo'),
                'label' => $this->getLabelForValue('generoPsicologo', $request->input('generoPsicologo')),
            ],
            [
                'pregunta' => '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?',
                'key' => 'situacionesActuales',
                'respuesta' => implode(', ', $request->input('situacionesActuales', [])),
                'label' => implode(', ', array_map(fn($value) => $this->getLabelForValue('situacionesActuales', $value), $request->input('situacionesActuales', []))),
            ],
            [
                'pregunta' => '¿Con qué situaciones sientes que necesitas más ayuda?',
                'key' => 'necesidadesAyuda',
                'respuesta' => implode(', ', $request->input('necesidadesAyuda', [])),
                'label' => implode(', ', array_map(fn($value) => $this->getLabelForValue('necesidadesAyuda', $value), $request->input('necesidadesAyuda', []))),
            ],
            [
                'pregunta' => '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?',
                'key' => 'objetivosMejorar',
                'respuesta' => implode(', ', $request->input('objetivosMejorar', [])),
                'label' => implode(', ', array_map(fn($value) => $this->getLabelForValue('objetivosMejorar', $value), $request->input('objetivosMejorar', []))),
            ],
        ];


        DB::table('preferencias_respuestas')->insert(array_map(fn($respuesta) => [
            'id_preferencia' => $preferencia->id,
            'pregunta' => $respuesta['pregunta'],
            'key' => $respuesta['key'],
            'respuesta' => $respuesta['respuesta'],
            'created_at' => now(),
            'updated_at' => now(),
        ], $respuestas));

        if (!empty($patologiasIds)) {
            $paciente->patologias()->sync($patologiasIds);
        } else {
            $paciente->patologias()->sync([]);
        }

        $paciente->onboarding = true;
        $paciente->save();

        DB::table('match')->where('dni_paciente', $paciente->dni)->delete();

        // Obtener psicólogos que coinciden con las preferencias
        $psicologos = Psicologo::with(['patologias', 'corriente', 'tematica'])
            ->where('genero', $generoPsicologo)
            ->get();

        // Filtrar por edad preferida
        $psicologos = $psicologos->filter(function ($psicologo) use ($edadPsicologo) {
            [$min, $max] = explode('-', $edadPsicologo);
            $edadPsicologoCalculada = Carbon::parse($psicologo->fecha_nacimiento)->age;
            return $edadPsicologoCalculada >= $min && $edadPsicologoCalculada <= $max;
        });

        // Calcular coincidencias con pesos
        $psicologosConCoincidencias = $psicologos->map(function ($psicologo) use ($tematica, $corrientesIds, $patologiasIds) {
            $coincidencias = 0;

            // Temática (3 puntos)
            if ($psicologo->id_tematica == $tematica) {
                $coincidencias += 3;
            }

            // Corriente (2 puntos)
            if (in_array($psicologo->id_corriente, $corrientesIds)) {
                $coincidencias += 2;
            }

            // Patologías (1 punto por cada coincidencia)
            $coincidencias += $psicologo->patologias
                ->whereIn('id_patologia', $patologiasIds)
                ->count();

            return [
                'psicologo' => $psicologo,
                'coincidencias' => $coincidencias,
            ];
        });

        // Ordenar por coincidencias y seleccionar los 5 mejores
        $mejoresPsicologos = $psicologosConCoincidencias
            ->sortByDesc('coincidencias')
            ->take(5);

        // Guardar los matches en la base de datos
        foreach ($mejoresPsicologos as $match) {
            DB::table('match')->insert([
                'dni_paciente' => $paciente->dni,
                'matricula_psicologo' => $match['psicologo']->matricula,
            ]);
        }

        return response()->json($mejoresPsicologos->pluck('psicologo'));
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
                    'fecha_nacimiento' => $psicologo->fecha_nacimiento,
                    'foto' => $psicologo->foto,
                    'genero' => $psicologo->genero,
                    'promedio' => $psicologo->promedio,
                    'precio' => $psicologo->precio,
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
        $preferencia = Preferencia::with(['tematica'])->where('dni_paciente', $dni_paciente)->first();
        if (!$preferencia) {
            return response()->json(['error' => 'No se encontraron preferencias'], 404);
        }

        $respuestas = DB::table('preferencias_respuestas')
            ->where('id_preferencia', $preferencia->id)
            ->get();

        $patologias = DB::table('preferencias_patologias')
            ->join('patologia', 'preferencias_patologias.id_patologia', '=', 'patologia.id_patologia')
            ->where('id_preferencia', $preferencia->id)
            ->pluck('nombre');

        return response()->json([
            'tematica' => $preferencia->tematica->nombre ?? null,
            'respuestas' => $respuestas->map(function ($respuesta) {
                return [
                    'key' => $respuesta->key,
                    'pregunta' => $respuesta->pregunta,
                    'respuesta' => $respuesta->label ?? $respuesta->respuesta,
                ];
            }),
            'patologias' => $patologias,
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

    private function getLabelForValue($key, $value)
    {
        $questions = [
            [
                'key' => 'tematica',
                'options' => [
                    ['label' => 'Online', 'value' => 'Online'],
                    ['label' => 'Presencial', 'value' => 'Presencial'],
                    ['label' => 'Ambas', 'value' => 'Ambas'],
                ],
            ],
            [
                'key' => 'corriente',
                'options' => [
                    ['label' => 'Que intervengan y me guíen activamente', 'value' => 'Intervencion activa'],
                    ['label' => 'Que me escuchen y apoyen sin juzgarme', 'value' => 'Escucha y apoyo'],
                    ['label' => 'No estoy seguro/a', 'value' => 'Indiferente'],
                ],
            ],
            [
                'key' => 'edadPsicologo',
                'options' => [
                    ['label' => 'Entre 18 y 35 años', 'value' => '18-35'],
                    ['label' => 'Entre 36 y 45 años', 'value' => '36-45'],
                    ['label' => 'Entre 46 y 65 años', 'value' => '46-65'],
                    ['label' => 'Me da igual', 'value' => 'Indiferente'],
                ],
            ],
            [
                'key' => 'generoPsicologo',
                'options' => [
                    ['label' => 'Femenino', 'value' => 'Femenino'],
                    ['label' => 'Masculino', 'value' => 'Masculino'],
                    ['label' => 'Me da igual', 'value' => 'Indiferente'],
                ],
            ],
            [
                'key' => 'situacionesActuales',
                'options' => [
                    ['label' => 'Me siento triste o desmotivado la mayor parte del tiempo', 'value' => 'Depresión'],
                    ['label' => 'Siento nerviosismo constante o me cuesta relajarme', 'value' => 'Ansiedad'],
                    ['label' => 'Tengo miedos intensos o ataques de pánico', 'value' => 'Trastorno de pánico'],
                    ['label' => 'Mis emociones cambian drásticamente de un momento a otro', 'value' => 'Trastorno bipolar'],
                    ['label' => 'A veces escucho o percibo cosas que otros no ven', 'value' => 'Esquizofrenia'],
                    ['label' => 'Tengo pensamientos repetitivos y me cuesta dejar de hacer ciertas cosas', 'value' => 'TOC (Trastorno Obsesivo Compulsivo)'],
                    ['label' => 'Me cuesta concentrarme o mantener mi atención en tareas', 'value' => 'TDAH (Déficit de Atención e Hiperactividad)'],
                ],
            ],
            [
                'key' => 'necesidadesAyuda',
                'options' => [
                    ['label' => 'Dificultad para enfrentar cambios o pérdidas en mi vida', 'value' => 'Duelo patológico'],
                    ['label' => 'Siento miedo extremo en lugares abiertos o llenos de gente', 'value' => 'Agorafobia'],
                    ['label' => 'Me cuesta conectar con otras personas o confiar en ellas', 'value' => 'Trastornos de apego'],
                    ['label' => 'A veces siento que no soy yo mismo o que mi entorno es irreal', 'value' => 'Trastorno de despersonalización'],
                ],
            ],
            [
                'key' => 'objetivosMejorar',
                'options' => [
                    ['label' => 'Sentirme más tranquilo/a y en control de mis emociones', 'value' => 'Ansiedad'],
                    ['label' => 'Dejar de sentirme atrapado/a en pensamientos negativos', 'value' => 'Depresión'],
                    ['label' => 'Mejorar mi relación conmigo mismo/a o con los demás', 'value' => 'Trastornos de apego'],
                    ['label' => 'Superar un miedo o una experiencia difícil', 'value' => 'Fobias'],
                ],
            ],
        ];

        $question = collect($questions)->firstWhere('key', $key);
        if (!$question) return null;

        $option = collect($question['options'])->firstWhere('value', $value);
        return $option['label'] ?? $value;
    }
}
