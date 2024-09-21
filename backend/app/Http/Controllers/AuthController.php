<?php

namespace App\Http\Controllers;

use App\Models\Paciente;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function registerPaciente(Request $request)
    {
        $validated = $request->validate([
            'dni' => 'required|integer|min:8|unique:paciente',
            'nombre' => 'required|string|max:50',
            'apellido' => 'required|string|max:50',
            'preferencias' => 'string|nullable',
            'email' => 'required|string|email|max:255|unique:paciente',
            'password' => 'required|string|min:8|confirmed',
        ]);

        $paciente = Paciente::create([
            'dni' => $validated['dni'],
            'nombre' => $validated['nombre'],
            'apellido' => $validated['apellido'],
            'preferencias' => $validated['preferencias'] ?? null,
            'email' => $validated['email'],
            'password' => bcrypt($validated['password']),
        ]);

        // Obtener o crear el rol
        $role = \Spatie\Permission\Models\Role::firstOrCreate(['name' => 'paciente', 'guard_name' => 'web']);

        // Asignar el rol al paciente
        DB::table('model_has_roles')->insert([
            'role_id' => $role->id,
            'model_type' => 'App\Models\Paciente',
            'model_id' => $paciente->dni
        ]);

        $paciente->save();

        return response()->json($paciente, 201);
    }
}
