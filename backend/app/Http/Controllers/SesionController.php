<?php

namespace App\Http\Controllers;

use App\Models\Paciente;
use App\Models\Sesion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SesionController extends Controller
{

    public function store(Request $request)
    {
        $psicologo = auth()->user();
        $isPaciente = Paciente::where('dni', $request['dni_paciente'])->exists();

        $request->validate([
            'dni_paciente' => 'required|integer',
            'matricula_psicologo' => 'required|integer',
            'fecha' => 'required|date',
            'hora' => 'required',
        ]);


        if (!$isPaciente) {
            return response()->json(['message' => 'DNI del paciente incorrecto'], 404);
        }


        $sesion = Sesion::create([
            'dni_paciente' => $request->dni_paciente,
            'matricula_psicologo' => $psicologo->matricula,
            'fecha' => $request->fecha,
            'hora' => $request->hora,
            'presencial' => false,
            'cancelado' => false,
        ]);

        return response()->json($sesion, 201);
    }


    public function index()
    {
        $psicologo = auth()->user();


        $sesiones = Sesion::where('matricula_psicologo', $psicologo->matricula)
            ->get();

        return response()->json($sesiones);
    }

    public function destroy($id_sesion)
    {
        $sesion = Sesion::where('id_sesion', $id_sesion)->firstOrFail();
        $sesion->cancelado = true;
        $sesion->save();

        return response()->json(['message' => 'Session cancelled successfully.']);
    }

    public function sesionesDeHoy()
    {
        $psicologo = auth()->user();
        $hoy = now()->toDateString();

        $sesionesHoy = Sesion::where('matricula_psicologo', $psicologo->matricula)
            ->where('fecha', $hoy)
            ->where('cancelado', false)
            ->get();

        return response()->json($sesionesHoy);
    }
}
