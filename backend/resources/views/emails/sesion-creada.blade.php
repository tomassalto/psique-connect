<!DOCTYPE html>
<html>

<body>
    <h1 class="text-2xl font-bold text-center text-greenPsique">Nueva Sesión Programada</h1>

    @if ($esPsicologo)
        <p>Se ha programado una nueva sesión con el paciente {{ $paciente->nombre }} {{ $paciente->apellido }}.</p>
    @else
        <p>Se ha programado una nueva sesión con el psicólogo {{ $psicologo->nombre }} {{ $psicologo->apellido }}.</p>
    @endif

    <p>Detalles de la sesión:</p>
    <ul>
        <li>Fecha: {{ \Carbon\Carbon::parse($sesion->fecha)->format('d/m/Y') }}</li>
        <li>Hora: {{ \Carbon\Carbon::parse($sesion->hora)->format('H:i') }} hs</li>
    </ul>
</body>

</html>
