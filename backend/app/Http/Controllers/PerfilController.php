<?php

namespace App\Http\Controllers;

use App\Models\Paciente;
use App\Models\Psicologo;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;

class PerfilController extends Controller
{
    /**
     * Muestra los datos del usuario autenticado, ya sea paciente o psicólogo.
     */
    public function show(Request $request)
    {
        $user = $request->user();

        if ($user) {
            $roles = $user->getRoleNames();

            if ($roles->isNotEmpty()) {
                $firstRole = $roles->first();

                if ($firstRole === 'paciente') {
                    $paciente = Paciente::where('email', $user->email)->first();
                    if ($paciente) {
                        return response()->json([
                            'nombre' => $paciente->nombre,
                            'apellido' => $paciente->apellido,
                            'email' => $paciente->email,
                            'dni' => $paciente->dni,
                            'onboarding' => $paciente->onboarding,
                            'rol' => $firstRole
                        ]);
                    } else {
                        return response()->json(['error' => 'Paciente no encontrado'], 404);
                    }
                } elseif ($firstRole === 'psicologo') {
                    $psicologo = Psicologo::where('email', $user->email)->first();
                    if ($psicologo) {
                        return response()->json([
                            'nombre' => $psicologo->nombre,
                            'apellido' => $psicologo->apellido,
                            'email' => $psicologo->email,
                            'matricula' => $psicologo->matricula,
                            'telefono' => $psicologo->telefono,
                            'promedio' => $psicologo->promedio,
                            'codigo_postal' => $psicologo->codigo_postal,
                            'genero' => $psicologo->genero,
                            'fecha_nacimiento' => $psicologo->fecha_nacimiento,
                            'foto' => $psicologo->foto,
                            'id_tematica' => $psicologo->id_tematica,
                            'patologias' => $psicologo->patologias,
                            'id_corriente' => $psicologo->id_corriente,
                            'rol' => $firstRole
                        ]);
                    } else {
                        return response()->json(['error' => 'Psicólogo no encontrado'], 404);
                    }
                } else {
                    return response()->json(['error' => 'Rol no reconocido'], 403);
                }
            } else {
                return response()->json(['error' => 'Usuario no tiene roles asignados'], 403);
            }
        } else {
            return response()->json(['error' => 'Usuario no autenticado'], 401);
        }
    }

    public function update(Request $request)
    {
        Log::info('Datos recibidos en el request:', $request->all());
        $roles = $request->user()->getRoleNames();
        if ($roles->contains('paciente')) {

            $request->validate([
                'email' => 'required|email|max:255',
                'nombre' => 'required|string|max:255',
                'apellido' => 'required|string|max:255',
                'dni' => 'required|integer',
            ]);

            $user = Paciente::where('email', $request->email)->orWhere('dni', $request->dni)->first();

            if (!$user) {
                return response()->json(['message' => 'Paciente no encontrado.'], 404);
            }

            $user->update([
                'nombre' => $request->input('nombre'),
                'apellido' => $request->input('apellido'),
                'dni' => $request->input('dni'),
                'email' => $request->input('email'),
            ]);

            return response()->json(['message' => 'Perfil del paciente actualizado con éxito.'], 201);
        } elseif ($roles->contains('psicologo')) {

            $request->validate([
                'matricula' => 'required|integer',
                'nombre' => 'required|string|max:255',
                'apellido' => 'required|string|max:255',
                'telefono' => 'required|string|max:20',
                'promedio' => 'required|numeric|between:0,10',
                'codigo_postal' => 'required|integer',
                'genero' => 'required|string|in:masculino,femenino',
                'fecha_nacimiento' => 'required|date',
                'foto' => 'nullable|image|mimes:jpg,png|max:2048',
                'id_tematica' => 'required|integer',
                'patologias' => 'required|array|min:1',
                'patologias.*' => 'exists:patologia,id_patologia',
                'id_corriente' => 'required|integer',
                'email' => 'required|email',
            ]);


            $psicologo = Psicologo::find($request->matricula);
            if (!$psicologo) {
                return response()->json(['error' => 'Psicólogo no encontrado'], 404);
            }

            $psicologo->nombre = $request->nombre;
            $psicologo->apellido = $request->apellido;
            $psicologo->telefono = $request->telefono;
            $psicologo->promedio = $request->promedio;
            $psicologo->codigo_postal = $request->codigo_postal;
            $psicologo->genero = $request->genero;
            $psicologo->fecha_nacimiento = $request->fecha_nacimiento;
            $psicologo->id_tematica = $request->id_tematica;
            $psicologo->id_corriente = $request->id_corriente;
            $psicologo->email = $request->email;

            if ($request->hasFile('foto')) {
                if ($psicologo->foto && Storage::exists($psicologo->foto)) {
                    Storage::delete($psicologo->foto);
                }
                $path = $request->file('foto')->store('fotos_psicologos', 'public');
                $psicologo->foto = $path;
            }

            $psicologo->save();

            $psicologo->patologias()->sync($request->patologias);
            return response()->json(['message' => 'Perfil del psicólogo actualizado con éxito.'], 201);
        } else {
            return response()->json(['message' => 'Rol no autorizado para esta acción.'], 403);
        }
    }
}
