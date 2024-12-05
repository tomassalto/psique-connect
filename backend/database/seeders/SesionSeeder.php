<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Storage;

class SesionSeeder extends Seeder
{
    public function run()
    {
        $relaciones = DB::table('psicologo_paciente')->get();
        $fechaInicio = Carbon::create(2022, 1, 1);
        $fechaFin = Carbon::create(2024, 12, 31);

        $comentarios = [
            'Revisar tarea asignada la semana pasada.',
            'Trabajar en estrategias de manejo de ansiedad.',
            'Discutir avances en los objetivos establecidos.',
            'Evaluar progreso en la comunicación interpersonal.',
            'Reflexionar sobre los eventos de la semana.',
            'Practicar ejercicios de relajación.',
            'Identificar patrones de pensamiento negativos.',
            'Analizar situaciones laborales recientes.',
            'Revisar compromisos establecidos anteriormente.',
            'Explorar posibles soluciones a los conflictos actuales.',
            null,
            null,
            null,
        ];

        foreach ($relaciones as $relacion) {
            // Generar entre 10 y 30 sesiones por relación
            $cantidadSesiones = rand(10, 30);

            for ($i = 0; $i < $cantidadSesiones; $i++) {
                $fecha = fake()->dateTimeBetween(
                    $fechaInicio,
                    $fechaFin,
                    'America/Argentina/Buenos_Aires'
                );

                $hora = fake()->time('H:i:s', '20:00:00');

                $comentario = $comentarios[array_rand($comentarios)];

                $isPagada = fake()->boolean(90); // 90% de las sesiones estarán pagadas

                $sesionId = DB::table('sesion')->insertGetId([
                    'dni_paciente' => $relacion->dni_paciente,
                    'matricula_psicologo' => $relacion->matricula_psicologo,
                    'fecha' => $fecha->format('Y-m-d'),
                    'hora' => $hora,
                    'comentario' => $comentario,
                    'presencial' => fake()->boolean(70),
                    'cancelado' => fake()->boolean(10),
                    'pago' => $isPagada,
                    'created_at' => $fecha,
                    'updated_at' => $fecha,
                ]);

                if ($isPagada) {
                    $this->generarComprobante($sesionId, $fecha);
                }
            }
        }
    }

    private function generarComprobante($sesionId, $fechaPago)
    {
        // Obtener datos de la sesión con relaciones necesarias
        $sesion = DB::table('sesion')
            ->join('paciente', 'sesion.dni_paciente', '=', 'paciente.dni')
            ->join('psicologo', 'sesion.matricula_psicologo', '=', 'psicologo.matricula')
            ->where('sesion.id_sesion', $sesionId)
            ->select(
                'sesion.id_sesion',
                'sesion.fecha',
                'sesion.hora',
                'paciente.nombre as paciente_nombre',
                'paciente.apellido as paciente_apellido',
                'psicologo.nombre as psicologo_nombre',
                'psicologo.apellido as psicologo_apellido'
            )
            ->first();

        if (!$sesion) {
            return;
        }

        $pdf = Pdf::loadView('comprobantes.sesion', [
            'sesion' => $sesion,
            'fecha_pago' => $fechaPago->format('Y-m-d H:i:s'),
            'monto' => 2000.00,
            'payment_id' => 'MP-' . strtoupper(uniqid()),
        ]);

        $filename = 'comprobante_' . $sesionId . '.pdf';
        $path = 'comprobantes/' . $filename;

        Storage::disk('public')->put($path, $pdf->output());

        DB::table('sesion')->where('id_sesion', $sesionId)->update([
            'comprobante_path' => $path,
        ]);
    }
}
