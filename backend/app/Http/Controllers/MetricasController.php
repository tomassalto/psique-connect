<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class MetricasController extends Controller
{
    public function getMetricasPsicologo()
    {
        $psicologo = Auth::user();


        $sesionesXPaciente = DB::table('sesion')
            ->join('paciente', 'sesion.dni_paciente', '=', 'paciente.dni')
            ->where('matricula_psicologo', $psicologo->matricula)
            ->where('cancelado', false)
            ->groupBy('dni_paciente', 'paciente.nombre', 'paciente.apellido')
            ->select(
                'paciente.nombre',
                'paciente.apellido',
                DB::raw('count(*) as total_sesiones')
            )
            ->orderBy('total_sesiones', 'desc')
            ->limit(10)
            ->get();

        $sesionesXMes = DB::table('sesion')
            ->where('matricula_psicologo', $psicologo->matricula)
            ->where('cancelado', false)
            ->whereDate('fecha', '>=', Carbon::now()->subYear())
            ->groupBy('mes')
            ->select(
                DB::raw('DATE_FORMAT(fecha, "%Y-%m") as mes'),
                DB::raw('count(*) as total_sesiones')
            )
            ->orderBy('mes')
            ->get();
        $sesionesXAno = DB::table('sesion')
            ->where('matricula_psicologo', $psicologo->matricula)
            ->where('cancelado', false)
            ->groupBy('ano')
            ->select(
                DB::raw('YEAR(fecha) as ano'),
                DB::raw('count(*) as total_sesiones')
            )
            ->orderBy('ano')
            ->get();

        $modalidadSesiones = DB::table('sesion')
            ->where('matricula_psicologo', $psicologo->matricula)
            ->where('cancelado', false)
            ->select(
                DB::raw('SUM(CASE WHEN presencial = 1 THEN 1 ELSE 0 END) as presenciales'),
                DB::raw('SUM(CASE WHEN presencial = 0 THEN 1 ELSE 0 END) as virtuales')
            )
            ->first();

        return response()->json([
            'sesionesXPaciente' => $sesionesXPaciente,
            'sesionesXMes' => $sesionesXMes,
            'sesionesXAno' => $sesionesXAno,
            'modalidadSesiones' => $modalidadSesiones
        ]);
    }
}
