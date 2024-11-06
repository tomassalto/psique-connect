<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Corriente;
use App\Models\Psicologo;
use App\Models\Tematica;
use App\Models\Patologia;
use Illuminate\Support\Facades\Http;

class PsychologistController extends Controller
{
    protected $currencyController;

    public function __construct()
    {
        $this->currencyController = new CurrencyController();
    }


    public function getCorrientes(Request $request)
    {
        $corrientes = Corriente::all();



        return response()->json($corrientes);
    }


    public function getTematicas(Request $request)
    {
        $tematicas = Tematica::all();

        return response()->json($tematicas);
    }

    public function getPatologias(Request $request)
    {
        $patologias = Patologia::all();
        return response()->json($patologias);
    }

    public function search(Request $request)
    {
        $searchTerm = $request->query('search');
        $corriente = $request->query('corriente');
        $tematica = $request->query('tematica');
        $patologia = $request->query('patologia');
        $currency = $request->query('currency', 'ARS');
        $query = Psicologo::with('patologia', 'corriente', 'tematica');

        if ($searchTerm) {
            $query->where(function ($q) use ($searchTerm) {
                if (is_numeric($searchTerm)) {
                    $q->where('matricula', $searchTerm);
                } else {
                    $q->where('nombre', 'LIKE', "%{$searchTerm}%")
                        ->orWhere('apellido', 'LIKE', "%{$searchTerm}%");
                }
            });
        }

        if ($corriente) {
            $query->where('id_corriente', $corriente);
        }

        if ($tematica) {
            $query->where('id_tematica', $tematica);
        }

        if ($patologia) {
            $query->where('id_patologia', $patologia);
        }

        $psicologos = $query->get();


        if ($currency !== 'ARS') {
            $psicologos = $this->currencyController->convertPrices($psicologos, $currency);
        }

        return response()->json($psicologos);
    }


    public function index(Request $request)
    {
        $currency = $request->query('currency', 'ARS');
        $psicologos = Psicologo::with('patologia', 'corriente', 'tematica')->get();

        if ($currency !== 'ARS') {
            $psicologos = $this->currencyController->convertPrices($psicologos, $currency);
        }

        return response()->json($psicologos);
    }
}
