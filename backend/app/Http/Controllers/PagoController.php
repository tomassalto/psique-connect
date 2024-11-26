<?php

namespace App\Http\Controllers;

use App\Models\Sesion;
use Illuminate\Http\Request;
use MercadoPago\Client\Preference\PreferenceClient;
use MercadoPago\MercadoPagoConfig;
use Illuminate\Support\Facades\Log;
use MercadoPago\Client\Payment\PaymentClient;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Mail;
use App\Mail\PagoConfirmado;

class PagoController extends Controller
{
    public function __construct()
    {
        MercadoPagoConfig::setAccessToken(env('MERCADOPAGO_ACCESS_TOKEN'));
    }

    public function crearPago(Request $request)
    {
        try {
            $sesion = Sesion::with(['paciente', 'psicologo'])
                ->findOrFail($request->id_sesion);

            $client = new PreferenceClient();

            $preference_data = [
                'items' => [
                    [
                        'title' => "Sesión de terapia",
                        'description' => "Sesión con " . $sesion->psicologo->nombre,
                        'quantity' => 1,
                        'currency_id' => 'ARS',
                        'unit_price' => 2000.00
                    ]
                ],
                'payer' => [
                    'name' => $sesion->paciente->nombre,
                    'email' => 'test_user_152771693@testuser.com' // Email del comprador
                ],
                'back_urls' => [
                    'success' => url('/api/pago-exitoso'),
                    'failure' => url('/api/pago-fallido'),
                    'pending' => url('/api/pago-pendiente')
                ],
                'external_reference' => (string)$sesion->id_sesion,
                'auto_return' => 'approved'
            ];

            $preference = $client->create($preference_data);

            return response()->json([
                'init_point' => $preference->init_point
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }


    public function webhook(Request $request)
    {
        Log::info('Webhook recibido:', $request->all());

        if ($request->type === 'payment') {
            $client = new PaymentClient();
            $payment_id = $request->data_id;
            $payment = $client->get($payment_id);

            if ($payment && $payment->status === 'approved') {
                $sesion_id = $payment->external_reference;
                $sesion = Sesion::find($sesion_id);

                if ($sesion) {
                    $sesion->pago = true;
                    $sesion->payment_id = $payment_id;
                    $sesion->save();
                }
            }
        }

        return response()->json(['status' => 'ok']);
    }

    public function pagoExitoso(Request $request)
    {
        $sesion = Sesion::with(['paciente', 'psicologo'])->find($request->external_reference);

        if ($sesion) {
            $sesion->pago = true;
            $sesion->payment_id = $request->payment_id;
            $sesion->fecha_pago = now()->setTimezone('America/Argentina/Buenos_Aires');

            $pdf = PDF::loadView('comprobantes.sesion', [
                'sesion' => $sesion,
                'fecha_pago' => $sesion->fecha_pago,
                'monto' => 2000.00,
                'payment_id' => $request->payment_id
            ]);

            $filename = 'comprobante_' . $sesion->id_sesion . '.pdf';
            $path = 'comprobantes/' . $filename;
            Storage::disk('public')->put($path, $pdf->output());

            $sesion->comprobante_path = $path;
            $sesion->save();

            try {
                Mail::to($sesion->psicologo->email)
                    ->send(new PagoConfirmado($sesion, $path));
            } catch (\Exception $e) {
                Log::error('Error al enviar email de confirmación de pago: ' . $e->getMessage());
            }
        }

        return redirect(env('FRONTEND_URL') . '/mis-sesiones?status=success');
    }

    public function getComprobante($id_sesion)
    {
        $sesion = Sesion::findOrFail($id_sesion);

        if (!$sesion->comprobante_path) {
            return response()->json(['error' => 'No hay comprobante disponible'], 404);
        }

        $path = storage_path('app/public/' . $sesion->comprobante_path);

        if (!file_exists($path)) {
            return response()->json(['error' => 'Archivo no encontrado'], 404);
        }

        return response()->file($path);
    }

    public function pagoFallido(Request $request)
    {
        return redirect(env('FRONTEND_URL') . '/mis-sesiones?status=failure');
    }

    public function pagoPendiente(Request $request)
    {
        return redirect(env('FRONTEND_URL') . '/mis-sesiones?status=pending');
    }
}
