<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Patologia extends Model
{
    // La tabla asociada al modelo
    protected $table = 'patologia';
    protected $primaryKey = 'id_patologia';
    // Los atributos que se pueden asignar de forma masiva
    protected $fillable = ['nombre'];

    // Desactiva las marcas de tiempo si no se usan
    public $timestamps = false;

    public function psicologos()
    {
        return $this->belongsToMany(
            Psicologo::class,
            'psicologo_patologia',
            'id_patologia',
            'matricula_psicologo',
            'id_patologia',
            'matricula'
        );
    }
}
