<?php

namespace App\Http\Controllers;

use App\Mail\SesionCreada;
use App\Models\Paciente;
use App\Models\Sesion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;

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
            'comentario' => 'nullable|string|max:255',
        ]);

        if (!$paciente) {
            return response()->json(['message' => 'DNI del paciente incorrecto'], 404);
        }

        $sesionExistente = Sesion::where('matricula_psicologo', $psicologo->matricula)
            ->where('fecha', $request->fecha)
            ->where('hora', $request->hora)
            ->where('cancelado', false)
            ->first();

        if ($sesionExistente) {
            return response()->json(['message' => 'Ya existe una sesión en este horario.'], 409);
        } else {
            $sesion = Sesion::create([
                'dni_paciente' => $request->dni_paciente,
                'matricula_psicologo' => $psicologo->matricula,
                'fecha' => $request->fecha,
                'hora' => $request->hora,
                'comentario' => $request->comentario,
                'presencial' => false,
                'cancelado' => false,
            ]);

            Mail::to($paciente->email)
                ->send(new SesionCreada($sesion, $paciente, $psicologo, false));

            Mail::to($psicologo->email)
                ->send(new SesionCreada($sesion, $paciente, $psicologo, true));
        }

        return response()->json($sesion, 201);
    }



    public function index()
    {
        $psicologo = Auth::user();

        $sesiones = DB::table('sesion')
            ->join('paciente', 'sesion.dni_paciente', '=', 'paciente.dni')
            ->where('sesion.matricula_psicologo', $psicologo->matricula)
            ->select(
                'sesion.id_sesion',
                'sesion.fecha',
                'sesion.hora',
                'sesion.cancelado',
                'sesion.comentario',
                'paciente.dni as dni_paciente',
                'paciente.nombre',
                'paciente.apellido'
            )
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
