<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CalificacionSeeder extends Seeder
{
    public function run()
    {
        $sesiones = DB::table('sesion')
            ->select('dni_paciente', 'matricula_psicologo', DB::raw('count(*) as total_sesiones'))
            ->groupBy('dni_paciente', 'matricula_psicologo')
            ->having('total_sesiones', '>', 5)
            ->get();

        $comentarios = [
            'Excelente profesional, muy atento y comprensivo.',
            'Me ayudó mucho con mis problemas de ansiedad.',
            'Muy buena experiencia terapéutica.',
            'Recomiendo ampliamente sus servicios.',
            'Buen profesional pero a veces llega tarde a las sesiones.',
            'Me sentí muy cómodo/a durante las sesiones.',
        ];

        foreach ($sesiones as $sesion) {
            DB::table('calificacion')->insert([
                'dni_paciente' => $sesion->dni_paciente,
                'matricula_psicologo' => $sesion->matricula_psicologo,
                'valor' => fake()->randomFloat(1, 1, 5),
                'comentario' => fake()->randomElement($comentarios),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
