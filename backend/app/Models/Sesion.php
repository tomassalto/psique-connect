<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sesion extends Model
{
    use HasFactory;

    protected $table = 'sesion';
    protected $primaryKey = 'id_sesion';
    protected $fillable = [
        'dni_paciente',
        'matricula_psicologo',
        'fecha',
        'hora',
        'comentario',
        'presencial',
        'cancelado',
    ];

    // Definimos las relaciones si es necesario
    public function paciente()
    {
        return $this->belongsTo(Paciente::class, 'dni_paciente');
    }

    public function psicologo()
    {
        return $this->belongsTo(Psicologo::class, 'matricula_psicologo');
    }
}
