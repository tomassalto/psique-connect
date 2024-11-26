<?php

namespace App\Mail;

use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;

class SesionCreada extends Mailable
{
    public $sesion;
    public $paciente;
    public $psicologo;
    public $esPsicologo;

    public function __construct($sesion, $paciente, $psicologo, $esPsicologo = false)
    {
        $this->sesion = $sesion;
        $this->paciente = $paciente;
        $this->psicologo = $psicologo;
        $this->esPsicologo = $esPsicologo;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Nueva Sesión Programada - Psique-Connect',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.sesion-creada',
        );
    }
}
