<!DOCTYPE html>
<html>

<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Pago Confirmado</h2>

        <p>Hola {{ $sesion->psicologo->nombre }},</p>

        <p>El paciente {{ $sesion->paciente->nombre }} {{ $sesion->paciente->apellido }}
            ha realizado el pago de la sesión programada para el día {{ date('d/m/Y', strtotime($sesion->fecha)) }}
            a las {{ date('H:i', strtotime($sesion->hora)) }}.</p>

        <p>Detalles del pago:</p>
        <ul>
            <li>Fecha y hora del pago: {{ $sesion->fecha_pago->format('d/m/Y H:i:s') }}</li>
            <li>ID de Pago: {{ $sesion->payment_id }}</li>
            <li>Monto: $2000.00</li>
        </ul>

        <p>Se adjunta el comprobante de pago en formato PDF.</p>

        <p>Saludos cordiales,<br>
            Equipo de Psique Connect</p>
    </div>
</body>

</html>
