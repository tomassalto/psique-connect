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
    public function run()
    {
        $codigosPostales = DB::table('localidad')->pluck('codigo_postal')->toArray();
        $patologiasIds = DB::table('patologia')->pluck('id_patologia')->toArray();
        $role = Role::firstOrCreate(['name' => 'psicologo', 'guard_name' => 'web']);

        for ($i = 1; $i <= 30; $i++) {
            $psicologo = Psicologo::create([
                'matricula' => fake()->unique()->numberBetween(100000, 999999),
                'nombre' => fake()->firstName,
                'apellido' => fake()->lastName,
                'telefono' => fake()->phoneNumber,
                'promedio' => fake()->randomFloat(2, 0, 5),
                'codigo_postal' => fake()->randomElement($codigosPostales),
                'id_tematica' => fake()->numberBetween(1, 2),
                'id_corriente' => fake()->numberBetween(1, 3),
                'email' => fake()->unique()->safeEmail,
                'password' => Hash::make('tomastomas'),
            ]);

            DB::table('model_has_roles')->insert([
                'role_id' => $role->id,
                'model_type' => 'App\Models\Psicologo',
                'model_id' => $psicologo->matricula,
            ]);

            $randomPatologias = fake()->randomElements(
                $patologiasIds,
                fake()->numberBetween(2, 5)
            );

            foreach ($randomPatologias as $patologiaId) {
                DB::table('psicologo_patologia')->insert([
                    'matricula_psicologo' => $psicologo->matricula,
                    'id_patologia' => $patologiaId,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
