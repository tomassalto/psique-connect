<?php

namespace App\Http\Controllers;

use App\Mail\SesionCreada;
use App\Models\Paciente;
use App\Models\Sesion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class SesionController extends Controller
{

    public function store(Request $request)
    {
        $psicologo = auth()->user();
        $paciente = Paciente::where('dni', $request['dni_paciente'])->first();

        $request->validate([
            'dni_paciente' => 'required|integer',
            'matricula_psicologo' => 'required|integer',
            'fecha' => 'required|date',
            'hora' => 'required',
        ]);


        if (!$paciente) {
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

        Mail::to($paciente->email)
            ->send(new SesionCreada($sesion, $paciente, $psicologo, false));

        Mail::to($psicologo->email)
            ->send(new SesionCreada($sesion, $paciente, $psicologo, true));

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

    public function misSesiones()
    {
        $paciente = auth()->user();

        $sesiones = Sesion::where('dni_paciente', $paciente->dni)
            ->orderBy('fecha', 'desc')
            ->orderBy('hora', 'desc')
            ->get();

        return response()->json($sesiones);
    }
}
