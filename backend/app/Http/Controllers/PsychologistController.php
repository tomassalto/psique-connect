<?php

namespace App\Http\Controllers;

use App\Models\Corriente;
use App\Models\Patologia;
use Illuminate\Http\Request;
use App\Models\Psicologo;
use App\Models\Tematica;

class PsychologistController extends Controller
{
    public function getCorrientes()
    {
        $corrientes = Corriente::all();
        return response()->json($corrientes);
    }

    public function getTematicas()
    {
        $tematicas = Tematica::all();
        return response()->json($tematicas);
    }

    public function getPatologias()
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

        return response()->json($psicologos);
    }



    public function index()
    {
        $psicologos = Psicologo::with('patologia', 'corriente', 'tematica')->get();

        return response()->json($psicologos);
    }
}
