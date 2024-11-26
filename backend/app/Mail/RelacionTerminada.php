<?php

namespace App\Mail;

use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;

class RelacionTerminada extends Mailable
{
    public $paciente;
    public $psicologo;

    public function __construct($paciente, $psicologo)
    {
        $this->paciente = $paciente;
        $this->psicologo = $psicologo;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Relación Profesional Finalizada - Psique-Connect',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.relacion-terminada',
        );
    }
}
