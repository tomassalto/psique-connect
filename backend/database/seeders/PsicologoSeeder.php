<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Psicologo;
use Faker\Factory as Faker;
use Spatie\Permission\Models\Role;
use Carbon\Carbon;

class PsicologoSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('es_AR');
        $codigosPostales = DB::table('localidad')->pluck('codigo_postal')->toArray();
        $role = Role::firstOrCreate(['name' => 'psicologo', 'guard_name' => 'web']);
        $patologiasIds = DB::table('patologia')->pluck('id_patologia')->toArray();
        $corrientes = DB::table('corriente')->pluck('id_corriente')->toArray();
        $tematicas = DB::table('tematica')->pluck('id_tematica')->toArray();

        $generos = ['Masculino', 'Femenino'];
        $fotosMasculinas = [
            '../../storage/app/public/seeders/images/psicologo/man_image_1.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_2.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_3.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_4.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_5.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_6.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_7.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_8.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_9.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_10.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_11.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_12.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_13.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_14.jpg',
            '../../storage/app/public/seeders/images/psicologo/man_image_15.jpg',
        ];
        $fotosFemeninas = [
            '../../storage/app/public/seeders/images/psicologo/woman_image_1.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_2.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_3.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_4.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_5.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_6.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_7.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_8.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_9.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_10.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_11.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_12.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_13.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_14.jpg',
            '../../storage/app/public/seeders/images/psicologo/woman_image_15.jpg',
        ];

        shuffle($fotosMasculinas);
        shuffle($fotosFemeninas);


        for ($i = 0; $i < 15; $i++) {
            $nombre = $faker->firstName('male');
            $apellido = $faker->lastName;
            $fechaNacimiento = Carbon::now()->subYears(rand(18, 50))->format('Y-m-d');

            $psicologo = Psicologo::create([
                'matricula' => $faker->unique()->numberBetween(1000, 9999),
                'nombre' => $nombre,
                'apellido' => $apellido,
                'telefono' => $faker->phoneNumber,
                'promedio' => $faker->randomFloat(2, 0, 10),
                'codigo_postal' => $codigosPostales[array_rand($codigosPostales)],
                'id_tematica' => $tematicas[array_rand($tematicas)],
                'id_corriente' => $corrientes[array_rand($corrientes)],
                'email' => strtolower("{$nombre}_{$apellido}@mail.com"),
                'password' => bcrypt('tomastomas'),
                'foto' => $fotosMasculinas[$i % count($fotosMasculinas)],
                'fecha_nacimiento' => $fechaNacimiento,
                'genero' => $generos[0],
            ]);

            $this->asignarRolYPsicologo($psicologo, $patologiasIds, $role);
        }

        for ($i = 0; $i < 15; $i++) {
            $nombre = $faker->firstName('female');
            $apellido = $faker->lastName;
            $fechaNacimiento = Carbon::now()->subYears(rand(18, 50))->format('Y-m-d');

            $psicologo = Psicologo::create([
                'matricula' => $faker->unique()->numberBetween(1000, 9999),
                'nombre' => $nombre,
                'apellido' => $apellido,
                'telefono' => $faker->phoneNumber,
                'promedio' => $faker->randomFloat(2, 0, 10),
                'codigo_postal' => $codigosPostales[array_rand($codigosPostales)],
                'id_tematica' => $tematicas[array_rand($tematicas)],
                'id_corriente' => $corrientes[array_rand($corrientes)],
                'email' => strtolower("{$nombre}_{$apellido}@mail.com"),
                'password' => bcrypt('tomastomas'),
                'foto' => $fotosFemeninas[$i % count($fotosFemeninas)],
                'fecha_nacimiento' => $fechaNacimiento,
                'genero' => $generos[1],
            ]);

            $this->asignarRolYPsicologo($psicologo, $patologiasIds, $role);
        }
    }

    private function asignarRolYPsicologo($psicologo, $patologiasIds, $role)
    {
        DB::table('model_has_roles')->insert([
            'role_id' => $role->id,
            'model_type' => 'App\Models\Psicologo',
            'model_id' => $psicologo->matricula,
        ]);

        $randomPatologias = array_slice(
            shuffle($patologiasIds) ? $patologiasIds : [],
            0,
            rand(4, 8)
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
