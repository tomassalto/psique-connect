<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PsicologoPacienteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {

        $psicologos = DB::table('psicologo')->pluck('matricula')->toArray();
        $pacientes = DB::table('paciente')->pluck('dni')->toArray();

        foreach ($psicologos as $psicologo) {
            $pacientesRelacionados = fake()->randomElements($pacientes, rand(1, 5));
            foreach ($pacientesRelacionados as $paciente) {
                DB::table('psicologo_paciente')->insert([
                    'dni_paciente' => $paciente,
                    'matricula_psicologo' => $psicologo,
                    'actual' => true,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
