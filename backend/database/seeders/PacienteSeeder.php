<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Paciente;
use App\Models\Patologia;
use Spatie\Permission\Models\Role;
use Faker\Factory as Faker;

class PacienteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $faker = Faker::create('es_AR');
        $role = Role::firstOrCreate(['name' => 'paciente', 'guard_name' => 'web']);
        $patologias = Patologia::all();

        for ($i = 1; $i <= 30; $i++) {
            $nombre = $faker->firstName;
            $apellido = $faker->lastName;
            $nombreNormalizado = $this->normalizarTexto($nombre);
            $apellidoNormalizado = $this->normalizarTexto($apellido);

            $paciente = Paciente::create([
                'dni' => fake()->unique()->numberBetween(10000000, 99999999),
                'nombre' =>  $nombre,
                'apellido' => $apellido,
                'email' => "{$nombreNormalizado}_{$apellidoNormalizado}@mail.com",
                'password' => Hash::make('tomastomas'),
                'onboarding' => fake()->boolean,
            ]);

            DB::table('model_has_roles')->insert([
                'role_id' => $role->id,
                'model_type' => 'App\Models\Paciente',
                'model_id' => $paciente->dni,
            ]);

            $patologiasAleatorias = $patologias->random(rand(1, 3));

            foreach ($patologiasAleatorias as $patologia) {
                DB::table('paciente_patologia')->insert([
                    'dni_paciente' => $paciente->dni,
                    'id_patologia' => $patologia->id_patologia,
                ]);
            }

            if ($paciente->onboarding) {
                DB::table('preferencias')->insert([
                    'dni_paciente' => $paciente->dni,
                    'id_tematica' => rand(1, 2),
                    'id_corriente' => rand(1, 3),
                ]);
            }
        }
    }
    private function normalizarTexto($texto)
    {
        $texto = strtolower($texto);
        $texto = preg_replace('/\s+/', '_', $texto);
        $texto = str_replace(
            ['á', 'é', 'í', 'ó', 'ú', 'ñ', 'Á', 'É', 'Í', 'Ó', 'Ú', 'Ñ'],
            ['a', 'e', 'i', 'o', 'u', 'n', 'a', 'e', 'i', 'o', 'u', 'n'],
            $texto
        );
        $texto = preg_replace('/[^a-z0-9_]/', '', $texto);
        return $texto;
    }
}
