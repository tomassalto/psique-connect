<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Attachment;

class PagoConfirmado extends Mailable
{
    use Queueable, SerializesModels;

    public $sesion;
    public $pdfPath;

    public function __construct($sesion, $pdfPath)
    {
        $this->sesion = $sesion;
        $this->pdfPath = $pdfPath;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Pago Confirmado - Sesión de Terapia',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.pago-confirmado',
        );
    }

    public function attachments(): array
    {
        return [
            Attachment::fromPath(storage_path('app/public/' . $this->pdfPath))
                ->as('comprobante.pdf')
                ->withMime('application/pdf'),
        ];
    }
}
