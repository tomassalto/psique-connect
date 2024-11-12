<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Calificacion extends Model
{
    use HasFactory;

    protected $table = 'calificacion';

    protected $primaryKey = 'id_calificacion';
    protected $fillable = [
        'dni_paciente',
        'matricula_psicologo',
        'valor',
        'comentario',
    ];

    public function paciente()
    {
        return $this->belongsTo(Paciente::class, 'dni_paciente', 'dni');
    }

    public function psicologo()
    {
        return $this->belongsTo(Psicologo::class, 'matricula_psicologo', 'matricula');
    }
}
