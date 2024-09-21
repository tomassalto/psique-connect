<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Laravel\Sanctum\Http\Middleware\EnsureFrontendRequestsAreStateful;


Route::post('/registrar_paciente', [AuthController::class, 'registerPaciente']);

Route::middleware([
    'auth:sanctum',
    EnsureFrontendRequestsAreStateful::class,
])->group(function () {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });
});
