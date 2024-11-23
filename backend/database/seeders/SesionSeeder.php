<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SesionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {

        $relaciones = DB::table('psicologo_paciente')->get();

        foreach ($relaciones as $relacion) {

            $cantidadSesiones = rand(5, 15);

            for ($i = 0; $i < $cantidadSesiones; $i++) {
                $fecha = fake()->dateTimeBetween('2024-01-01', '2024-12-31', 'America/Argentina/Buenos_Aires');
                $hora = fake()->time('H:i:s', '23:59:59');

                DB::table('sesion')->insert([
                    'dni_paciente' => $relacion->dni_paciente,
                    'matricula_psicologo' => $relacion->matricula_psicologo,
                    'fecha' => $fecha->format('Y-m-d'),
                    'hora' => $hora,
                    'presencial' => fake()->boolean,
                    'cancelado' => fake()->boolean(10),
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
