<?php

use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OptionsController;
use App\Http\Controllers\PerfilController;
use App\Http\Controllers\PsychologistController;

Route::get('/tematicas', [OptionsController::class, 'getTematicas']);
Route::get('/patologias', [OptionsController::class, 'getPatologias']);
Route::get('/corrientes', [OptionsController::class, 'getCorrientes']);
Route::get('/localidades', [OptionsController::class, 'getLocalidades']);

Route::middleware(['auth:sanctum', 'role:paciente'])->group(function () {
    Route::get('/psicologos/search', [PsychologistController::class, 'search']);
    Route::get('/psicologos', [PsychologistController::class, 'index']);
});

Route::post('/registrar_paciente', [AuthController::class, 'registerPaciente']);
Route::post('/register_psicologo', [AuthController::class, 'registerPsicologo']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/perfil', [PerfilController::class, 'show']);
    Route::put('/update-patient', [PerfilController::class, 'update'])->middleware('auth');
});
