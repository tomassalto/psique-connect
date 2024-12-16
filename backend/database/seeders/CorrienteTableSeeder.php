<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CorrienteTableSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('corriente')->insert([
            ['nombre' => 'Psicoanalisis'],
            ['nombre' => 'Humanista'],
            ['nombre' => 'Terapia Integral'],
            ['nombre' => 'Cognitivo conductual'],
            ['nombre' => 'Sistemica'],
            ['nombre' => 'Gestalt'],
        ]);
    }
}
