<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Mensaje;
use App\Models\Paciente;
use App\Models\Psicologo;
use Carbon\Carbon;

class MensajeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $pacientes = Paciente::all();
        $psicologos = Psicologo::all();

        if ($pacientes->isEmpty() || $psicologos->isEmpty()) {
            $this->command->info('No hay pacientes o psicólogos disponibles para generar mensajes.');
            return;
        }

        foreach ($pacientes as $paciente) {
            $psicologosSeleccionados = $psicologos->random(3);

            foreach ($psicologosSeleccionados as $psicologo) {
                $randomDate = Carbon::now('America/Argentina/Buenos_Aires')
                    ->subDays(rand(0, 30))
                    ->setTime(rand(0, 23), rand(0, 59));

                Mensaje::create([
                    'dni_paciente' => $paciente->dni,
                    'matricula_psicologo' => $psicologo->matricula,
                    'contenido' => 'Hola, quisiera saber si tienes disponibilidad para una sesión.',
                    'created_at' => $randomDate,
                    'updated_at' => $randomDate,
                ]);
            }
        }

        $this->command->info('Mensajes generados exitosamente.');
    }
}
