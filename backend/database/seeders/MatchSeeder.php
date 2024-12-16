<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Psicologo;
use App\Models\Preferencia;

class MatchSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // Obtener todas las preferencias
        $preferencias = Preferencia::all();

        foreach ($preferencias as $preferencia) {
            // Obtener las respuestas específicas de género y edad
            $respuestas = DB::table('preferencias_respuestas')
                ->where('id_preferencia', $preferencia->id)
                ->pluck('respuesta', 'key');

            $generoPreferido = $respuestas['generoPsicologo'] ?? 'Indiferente';
            $edadPreferida = $respuestas['edadPsicologo'] ?? 'Indiferente';

            // Filtrar psicólogos por género y edad
            $psicologos = Psicologo::with(['patologias', 'corriente', 'tematica'])
                ->when($generoPreferido !== 'Indiferente', function ($query) use ($generoPreferido) {
                    return $query->where('genero', $generoPreferido);
                })
                ->when($edadPreferida !== 'Indiferente', function ($query) use ($edadPreferida) {
                    $ranges = [
                        '18-35' => [18, 35],
                        '36-45' => [36, 45],
                        '46-65' => [46, 65],
                    ];

                    if (isset($ranges[$edadPreferida])) {
                        [$min, $max] = $ranges[$edadPreferida];
                        $currentYear = now()->year;

                        return $query->whereYear('fecha_nacimiento', '<=', $currentYear - $min)
                            ->whereYear('fecha_nacimiento', '>=', $currentYear - $max);
                    }
                })
                ->get();

            // Calcular coincidencias
            $psicologosConCoincidencias = $psicologos->map(function ($psicologo) use ($preferencia) {
                $coincidencias = 0;

                // Verificar coincidencias en temática
                if ($psicologo->id_tematica === $preferencia->id_tematica) {
                    $coincidencias += 3; // Peso 3
                }

                // Verificar coincidencias en corriente
                if ($psicologo->id_corriente === $preferencia->id_corriente) {
                    $coincidencias += 2; // Peso 2
                }

                // Verificar coincidencias en patologías
                $patologiasPaciente = DB::table('paciente_patologia')
                    ->where('dni_paciente', $preferencia->dni_paciente)
                    ->pluck('id_patologia')
                    ->toArray();

                $coincidencias += $psicologo->patologias
                    ->whereIn('id_patologia', $patologiasPaciente)
                    ->count(); // Peso 1 por cada coincidencia

                return [
                    'psicologo' => $psicologo,
                    'coincidencias' => $coincidencias,
                ];
            });

            // Ordenar psicólogos por coincidencias y tomar los 5 mejores
            $mejoresPsicologos = $psicologosConCoincidencias
                ->sortByDesc('coincidencias')
                ->take(5);

            // Insertar en la tabla `match`
            foreach ($mejoresPsicologos as $match) {
                DB::table('match')->insert([
                    'dni_paciente' => $preferencia->dni_paciente,
                    'matricula_psicologo' => $match['psicologo']->matricula,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
