<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Mail;


Route::get('/', function () {
    return ['Laravel' => app()->version()];
});

require __DIR__ . '/auth.php';
Route::get('/test-mail', function () {
    $details = [
        'title' => 'Prueba de Correo',
        'body' => 'Este es un correo de prueba enviado desde Laravel usando Gmail SMTP.'
    ];

    Mail::raw('Este es un mensaje de prueba.', function ($message) {
        $message->to('tomasagustinsalto@gmail.com')
            ->subject('Correo de Prueba');
    });

    return 'Correo enviado exitosamente.';
});
