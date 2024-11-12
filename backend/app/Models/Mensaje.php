<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mensaje extends Model
{
    use HasFactory;

    protected $table = 'mensaje';

    protected $primaryKey = 'id_mensaje';

    protected $fillable = [
        'dni_paciente',
        'matricula_psicologo',
        'contenido',
    ];

    /**
     * Relación con el modelo Paciente.
     */
    public function paciente()
    {
        return $this->belongsTo(Paciente::class, 'dni_paciente', 'dni');
    }

    /**
     * Relación con el modelo Psicologo.
     */
    public function psicologo()
    {
        return $this->belongsTo(Psicologo::class, 'matricula_psicologo', 'matricula');
    }
}
