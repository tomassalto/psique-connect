<?php

namespace App\Http\Controllers;

use App\Models\Preferencia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Psicologo;

class PacienteController extends Controller
{
    protected $currencyController;

    public function __construct()
    {
        $this->currencyController = new CurrencyController();
    }

    public function guardarPreferenciasYMatch(Request $request)
    {

        $paciente = auth()->user();


        $tematica = $request->input('tematica');
        $corriente = $request->input('corriente');
        $patologia = $request->input('patologia');


        if (is_null($tematica) || is_null($corriente) || is_null($patologia)) {
            return response()->json(['error' => 'Datos incompletos'], 400);
        }


        $preferencias = Preferencia::where('dni_paciente', $paciente->dni)->first();

        if ($preferencias) {

            $preferencias->id_tematica = $tematica;
            $preferencias->id_corriente = $corriente;
            $preferencias->id_patologia = $patologia;
            $preferencias->save();
        } else {

            $preferencias = new Preferencia();
            $preferencias->dni_paciente = $paciente->dni;
            $preferencias->id_tematica = $tematica;
            $preferencias->id_corriente = $corriente;
            $preferencias->id_patologia = $patologia;
            $preferencias->save();
        }


        $paciente->onboarding = true;
        $paciente->save();

        DB::table('match')->where('dni_paciente', $paciente->dni)->delete();


        $psicologos = Psicologo::with(['patologia', 'corriente', 'tematica'])
            ->where('id_tematica', $tematica)
            ->orWhere('id_corriente', $corriente)
            ->orWhere('id_patologia', $patologia)
            ->orderByRaw("
            (id_tematica = ? AND id_corriente = ? AND id_patologia = ?) DESC, 
            (id_tematica = ? AND id_corriente = ?) DESC, 
            (id_tematica = ? AND id_patologia = ?) DESC
        ", [
                $tematica,
                $corriente,
                $patologia,
                $tematica,
                $corriente,
                $tematica,
                $patologia
            ])
            ->limit(5)
            ->get();


        foreach ($psicologos as $psicologo) {
            DB::table('match')->insert([
                'dni_paciente' => $paciente->dni,
                'matricula_psicologo' => $psicologo->matricula,
            ]);
        }


        return response()->json($psicologos);
    }


    public function obtenerMatches()
    {
        $paciente = auth()->user();

        $matches = DB::table('match')
            ->join('psicologo', 'match.matricula_psicologo', '=', 'psicologo.matricula')
            ->where('match.dni_paciente', $paciente->dni)
            ->select('psicologo.*')
            ->get();

        $currency = request()->query('currency', 'ARS');
        if ($currency !== 'ARS') {
            $matches = $this->currencyController->convertPrices($matches, $currency);
        }

        return response()->json($matches);
    }

    public function getUserPreferences($dni_paciente)
    {
        $preferencias = Preferencia::where('dni_paciente', $dni_paciente)
            ->with(['tematica', 'patologia', 'corriente'])
            ->first();

        return response()->json([
            'dni_paciente' => $preferencias->dni_paciente,
            'tematica' => $preferencias->tematica ? $preferencias->tematica->nombre : null,
            'patologia' => $preferencias->patologia ? $preferencias->patologia->nombre : null,
            'corriente' => $preferencias->corriente ? $preferencias->corriente->nombre : null,
        ]);
    }
}
