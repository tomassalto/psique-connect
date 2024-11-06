<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Psicologo;
use Faker\Factory as Faker;
use Spatie\Permission\Models\Role;

class PsicologoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {

        $codigosPostales = DB::table('localidad')->pluck('codigo_postal')->toArray();
        // Crea el rol de "psicologo" si no existe
        $role = Role::firstOrCreate(['name' => 'psicologo', 'guard_name' => 'web']);

        // Crea 10 psicólogos aleatorios
        for ($i = 1; $i <= 30; $i++) {
            // Crea el psicólogo con datos aleatorios
            $psicologo = Psicologo::create([
                'matricula' => fake()->unique()->numberBetween(100000, 999999),
                'nombre' => fake()->firstName,
                'apellido' => fake()->lastName,
                'telefono' => fake()->phoneNumber,
                'precio' => fake()->numberBetween(10000, 30000),
                'promedio' => fake()->randomFloat(2, 0, 5),
                'codigo_postal' => fake()->randomElement($codigosPostales), // Reemplaza con valores válidos
                'id_tematica' => fake()->numberBetween(1, 2), // Reemplaza con IDs válidos de tematica
                'id_patologia' => fake()->numberBetween(1, 3), // Reemplaza con IDs válidos de patologia
                'id_corriente' => fake()->numberBetween(1, 3), // Reemplaza con IDs válidos de corriente
                'email' => fake()->unique()->safeEmail,
                'password' => Hash::make('tomastomas'),
            ]);

            // Inserta en la tabla model_has_roles para asignar el rol al psicólogo
            DB::table('model_has_roles')->insert([
                'role_id' => $role->id,
                'model_type' => 'App\Models\Psicologo',
                'model_id' => $psicologo->matricula,
            ]);
        }
    }
}
