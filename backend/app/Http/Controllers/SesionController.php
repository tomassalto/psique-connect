<?php

namespace App\Http\Controllers;

use App\Models\Paciente;
use App\Models\Sesion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SesionController extends Controller
{
    // Función para guardar una nueva sesión
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

        // Verifica si el paciente existe
        if (!$isPaciente) {
            return response()->json(['message' => 'DNI del paciente incorrecto'], 404);
        }

        // Crear la sesión
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

    // Función para obtener todas las sesiones de un psicólogo
    public function index()
    {
        $psicologo = auth()->user();

        // Obtener las sesiones del psicólogo autenticado
        $sesiones = Sesion::where('matricula_psicologo', $psicologo->matricula)
            ->get();

        return response()->json($sesiones);
    }

    // Función para cancelar una sesión
    public function destroy($id_sesion)
    {
        $sesion = Sesion::where('id_sesion', $id_sesion)->firstOrFail(); // Usar 'id_sesion' en lugar de 'id'

        $sesion->cancelado = true;
        $sesion->save();

        return response()->json(['message' => 'Session cancelled successfully.']);
    }
}
