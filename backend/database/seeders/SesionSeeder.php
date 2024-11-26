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

                DB::table('sesion')->insert([
                    'dni_paciente' => $relacion->dni_paciente,
                    'matricula_psicologo' => $relacion->matricula_psicologo,
                    'fecha' => $fecha->format('Y-m-d'),
                    'hora' => $hora,
                    'presencial' => fake()->boolean(70),
                    'cancelado' => fake()->boolean(10),
                    'created_at' => $fecha,
                    'updated_at' => $fecha,
                ]);
            }
        }
    }
}
