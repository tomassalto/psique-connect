<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Paciente;
use Spatie\Permission\Models\Role;

class PacienteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {

        $role = Role::firstOrCreate(['name' => 'paciente', 'guard_name' => 'web']);

        for ($i = 1; $i <= 30; $i++) {

            $paciente = Paciente::create([
                'dni' => fake()->unique()->numberBetween(10000000, 99999999),
                'nombre' => fake()->firstName,
                'apellido' => fake()->lastName,
                'email' => fake()->unique()->safeEmail,
                'password' => Hash::make('tomastomas'),
                'onboarding' => fake()->boolean,
            ]);

            DB::table('model_has_roles')->insert([
                'role_id' => $role->id,
                'model_type' => 'App\Models\Paciente',
                'model_id' => $paciente->dni,
            ]);
        }
    }
}
