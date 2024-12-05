<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Paciente;
use App\Models\Preferencia;

class PreferenciasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // Definir las preguntas y sus opciones
        $questions = [
            [
                'key' => 'tematica',
                'pregunta' => '¿Qué tipo de modalidad prefieres?',
                'options' => [
                    ['label' => 'Online', 'value' => 'Online'],
                    ['label' => 'Presencial', 'value' => 'Presencial'],
                    ['label' => 'Ambas', 'value' => 'Ambas'],
                ],
            ],
            [
                'key' => 'corriente',
                'pregunta' => '¿Qué esperas de tu terapia?',
                'options' => [
                    ['label' => 'Que intervengan y me guíen activamente', 'value' => 'Intervencion activa'],
                    ['label' => 'Que me escuchen y apoyen sin juzgarme', 'value' => 'Escucha y apoyo'],
                    ['label' => 'No estoy seguro/a', 'value' => 'Indiferente'],
                ],
            ],
            [
                'key' => 'edadPsicologo',
                'pregunta' => '¿Qué rango de edad prefieres que tenga tu psicólogo?',
                'options' => [
                    ['label' => 'Entre 18 y 35 años', 'value' => '18-35'],
                    ['label' => 'Entre 36 y 45 años', 'value' => '36-45'],
                    ['label' => 'Entre 46 y 65 años', 'value' => '46-65'],
                    ['label' => 'Me da igual', 'value' => 'Indiferente'],
                ],
            ],
            [
                'key' => 'generoPsicologo',
                'pregunta' => '¿De qué género prefieres que sea tu psicólogo?',
                'options' => [
                    ['label' => 'Femenino', 'value' => 'Femenino'],
                    ['label' => 'Masculino', 'value' => 'Masculino'],
                    ['label' => 'Me da igual', 'value' => 'Indiferente'],
                ],
            ],
            [
                'key' => 'situacionesActuales',
                'pregunta' => '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?',
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
                'pregunta' => '¿Con qué situaciones sientes que necesitas más ayuda?',
                'options' => [
                    ['label' => 'Dificultad para enfrentar cambios o pérdidas en mi vida', 'value' => 'Duelo patológico'],
                    ['label' => 'Siento miedo extremo en lugares abiertos o llenos de gente', 'value' => 'Agorafobia'],
                    ['label' => 'Me cuesta conectar con otras personas o confiar en ellas', 'value' => 'Trastornos de apego'],
                    ['label' => 'A veces siento que no soy yo mismo o que mi entorno es irreal', 'value' => 'Trastorno de despersonalización'],
                ],
            ],
            [
                'key' => 'objetivosMejorar',
                'pregunta' => '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?',
                'options' => [
                    ['label' => 'Sentirme más tranquilo/a y en control de mis emociones', 'value' => 'Ansiedad'],
                    ['label' => 'Dejar de sentirme atrapado/a en pensamientos negativos', 'value' => 'Depresión'],
                    ['label' => 'Mejorar mi relación conmigo mismo/a o con los demás', 'value' => 'Trastornos de apego'],
                    ['label' => 'Superar un miedo o una experiencia difícil', 'value' => 'Fobias'],
                ],
            ],
        ];

        $pacientes = Paciente::all();
        $tematicas = DB::table('tematica')->pluck('id_tematica')->toArray();
        $corrientes = DB::table('corriente')->pluck('id_corriente')->toArray();

        foreach ($pacientes as $paciente) {
            if ($paciente->onboarding) {
                // Usar updateOrCreate para evitar duplicados
                $preferencia = Preferencia::updateOrCreate(
                    ['dni_paciente' => $paciente->dni],
                    [
                        'id_tematica' => $tematicas[array_rand($tematicas)],
                        'id_corriente' => $corrientes[array_rand($corrientes)],
                    ]
                );

                // Generar respuestas aleatorias para cada pregunta
                DB::table('preferencias_respuestas')->where('id_preferencia', $preferencia->id)->delete(); // Limpiar respuestas previas

                foreach ($questions as $question) {
                    $options = $question['options'];

                    // Elegir una o varias respuestas dependiendo del tipo de pregunta
                    $respuesta = fake()->randomElement($options);
                    $label = $respuesta['label'];
                    $value = $respuesta['value'];

                    // Guardar respuesta en preferencias_respuestas
                    DB::table('preferencias_respuestas')->insert([
                        'id_preferencia' => $preferencia->id,
                        'pregunta' => $question['pregunta'],
                        'key' => $question['key'],
                        'respuesta' => $value,
                        'label' => $label,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
                }
            }
        }
    }
}
