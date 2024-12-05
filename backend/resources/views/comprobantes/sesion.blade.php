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

        <p><strong>Fecha de Pago:</strong> {{ $fecha_pago }}</p>
        <p><strong>Paciente:</strong> {{ $sesion->paciente->nombre }} {{ $sesion->paciente->apellido }}</p>
        <p><strong>DNI:</strong> {{ $sesion->paciente->dni }}</p>
        <p><strong>Psicólogo:</strong> {{ $sesion->psicologo->nombre }} {{ $sesion->psicologo->apellido }}</p>
        <p><strong>Matricula:</strong> {{ $sesion->psicologo->matricula }}</p>
        <p><strong>Fecha de Sesión:</strong> {{ $sesion->fecha }}</p>
        <p><strong>Hora:</strong> {{ $sesion->hora }}</p>
        <p><strong>Monto:</strong> ${{ number_format($monto, 2) }}</p>
        <p><strong>Fecha de Pago:</strong> {{ $sesion->fecha_pago->format('d/m/Y H:i:s') }}</p>

    </div>
</body>

</html>
