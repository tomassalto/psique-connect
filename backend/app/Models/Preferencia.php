<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Preferencia extends Model
{
    use HasFactory;

    protected $fillable = ['dni_paciente', 'id_tematica', 'id_corriente', 'id_patologia'];

    // Relación con el paciente
    public function paciente()
    {
        return $this->belongsTo(Paciente::class, 'dni_paciente', 'dni');
    }
    public function tematica()
    {
        return $this->belongsTo(Tematica::class, 'id_tematica', 'id_tematica');
    }

    public function patologia()
    {
        return $this->belongsTo(Patologia::class, 'id_patologia', 'id_patologia');
    }

    public function corriente()
    {
        return $this->belongsTo(Corriente::class, 'id_corriente', 'id_corriente');
    }
}
