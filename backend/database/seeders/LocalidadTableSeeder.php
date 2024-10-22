<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class LocalidadTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $response = Http::get('https://apis.datos.gob.ar/georef/api/localidades?provincia=Neuquén&campos=id,nombre&max=1000');

        if ($response->successful()) {
            $localidades = $response->json()['localidades'];

            foreach ($localidades as $localidad) {
                DB::table('localidad')->insert([
                    'codigo_postal' => $localidad['id'],
                    'nombre' => $localidad['nombre'],
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        } else {
            $this->command->error('Error al obtener las localidades de la API.');
        }
    }
}
