<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class SesionSeeder extends Seeder
{
    public function run()
    {
        $relaciones = DB::table('psicologo_paciente')->get();
        $fechaInicio = Carbon::create(2022, 1, 1);
        $fechaFin = Carbon::create(2024, 12, 31);

        $comentarios = [
            'Revisar tarea asignada la semana pasada.',
            'Trabajar en estrategias de manejo de ansiedad.',
            'Discutir avances en los objetivos establecidos.',
            'Evaluar progreso en la comunicación interpersonal.',
            'Reflexionar sobre los eventos de la semana.',
            'Practicar ejercicios de relajación.',
            'Identificar patrones de pensamiento negativos.',
            'Analizar situaciones laborales recientes.',
            'Revisar compromisos establecidos anteriormente.',
            'Explorar posibles soluciones a los conflictos actuales.',
            null,
            null,
            null,
        ];

        foreach ($relaciones as $relacion) {
            $cantidadSesiones = rand(15, 45);

            for ($i = 0; $i < $cantidadSesiones; $i++) {
                $fecha = fake()->dateTimeBetween(
                    $fechaInicio,
                    $fechaFin,
                    'America/Argentina/Buenos_Aires'
                );

                $hora = fake()->dateTimeBetween(
                    '08:00:00',
                    '20:00:00'
                )->format('H:i:s');

                $comentario = $comentarios[array_rand($comentarios)];

                DB::table('sesion')->insert([
                    'dni_paciente' => $relacion->dni_paciente,
                    'matricula_psicologo' => $relacion->matricula_psicologo,
                    'fecha' => $fecha->format('Y-m-d'),
                    'hora' => $hora,
                    'comentario' => $comentario,
                    'presencial' => fake()->boolean(70),
                    'cancelado' => fake()->boolean(10),
                    'created_at' => $fecha,
                    'updated_at' => $fecha,
                ]);
            }
        }
    }
}
