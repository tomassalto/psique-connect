<!DOCTYPE html>
<html>

<head>
    <title>Comprobante de Pago</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .details {
            margin: 20px 0;
        }

        .footer {
            margin-top: 50px;
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="header">
        <h1>Comprobante de Pago</h1>
        <h2>Psique Connect</h2>
    </div>

    <div class="details">
        <p><strong>Paciente:</strong> {{ $paciente_nombre }} {{ $paciente_apellido }}</p>
        <p><strong>Psicólogo:</strong> {{ $psicologo_nombre }} {{ $psicologo_apellido }}</p>
        <p><strong>Fecha de la sesión:</strong> {{ \Carbon\Carbon::parse($sesion->fecha)->format('d/m/Y') }}</p>
        <p><strong>Hora:</strong> {{ $sesion->hora }}</p>
        <p><strong>Monto:</strong> ${{ number_format($monto, 2, ',', '.') }}</p>
        <p><strong>Número de operacíon:</strong> {{ $payment_id }}</p>
        <p><strong>Fecha de Pago:</strong> {{ \Carbon\Carbon::parse($fecha_pago)->format('d/m/Y H:i:s') }}</p>
    </div>
</body>

</html>
