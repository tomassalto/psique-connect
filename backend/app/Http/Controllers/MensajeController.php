<?php

namespace App\Http\Controllers;

use App\Models\Mensaje;
use Illuminate\Http\Request;
use Carbon\Carbon;

class MensajeController extends Controller
{
    public function store(Request $request)
    {
        $paciente = auth()->user();

        $validated = $request->validate([
            'matricula_psicologo' => 'required|integer|exists:psicologo,matricula',
            'contenido' => 'required|string|max:500'
        ]);

        $timestamp = Carbon::now('America/Argentina/Buenos_Aires');

        Mensaje::create([
            'dni_paciente' => $paciente->dni,
            'matricula_psicologo' => $validated['matricula_psicologo'],
            'contenido' => $validated['contenido'],
            'created_at' => $timestamp,
            'updated_at' => $timestamp,
        ]);

        return response()->json(['message' => 'Mensaje enviado exitosamente'], 201);
    }

    public function marcarComoLeido($idMensaje)
    {
        $mensaje = Mensaje::find($idMensaje);
        if ($mensaje) {
            $mensaje->leido = true;
            $mensaje->save();
        }
        return response()->json(['success' => true]);
    }

    public function unreadMessagesCount()
    {
        $count = Mensaje::where('matricula_psicologo', auth()->user()->matricula)
            ->where('leido', false)
            ->count();

        return response()->json(['unreadCount' => $count]);
    }
}
