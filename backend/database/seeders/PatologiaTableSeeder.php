<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PatologiaTableSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('patologia')->insert([
            ['nombre' => 'Depresión'],
            ['nombre' => 'Ansiedad'],
            ['nombre' => 'Trastorno de pánico'],
            ['nombre' => 'Trastorno bipolar'],
            ['nombre' => 'Esquizofrenia'],
            ['nombre' => 'TOC (Trastorno Obsesivo Compulsivo)'],
            ['nombre' => 'TDAH (Déficit de Atención e Hiperactividad)'],
            ['nombre' => 'Trastornos alimenticios'],
            ['nombre' => 'Adicciones'],
            ['nombre' => 'Trastornos del sueño'],
            ['nombre' => 'Estrés postraumático'],
            ['nombre' => 'Fobias'],
            ['nombre' => 'Trastorno límite de la personalidad'],
            ['nombre' => 'Trastorno de ansiedad social'],
            ['nombre' => 'Agorafobia'],
            ['nombre' => 'Trastorno de estrés agudo'],
            ['nombre' => 'Duelo patológico'],
            ['nombre' => 'Crisis de identidad'],
            ['nombre' => 'Trastorno dismórfico corporal'],
            ['nombre' => 'Trastorno de adaptación'],
            ['nombre' => 'Trastorno narcisista'],
            ['nombre' => 'Trastorno de conducta'],
            ['nombre' => 'Trastorno de apego'],
            ['nombre' => 'Trastorno de la personalidad evitativa'],
            ['nombre' => 'Trastorno psicótico'],
            ['nombre' => 'Trastorno de despersonalización'],
            ['nombre' => 'Trastorno de desrealización'],
            ['nombre' => 'Trastorno de ansiedad generalizada'],
            ['nombre' => 'Trastorno del espectro autista'],
            ['nombre' => 'Trastorno de la conducta alimentaria'],
            ['nombre' => 'Trastorno del control de impulsos'],
            ['nombre' => 'Trastorno de identidad disociativo'],
            ['nombre' => 'Hipocondría'],
            ['nombre' => 'Trastorno de acumulación'],
            ['nombre' => 'Trastorno de la personalidad dependiente'],
        ]);
    }
}
