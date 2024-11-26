<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class Paciente extends Authenticatable
{
    use HasFactory, HasApiTokens, Notifiable, HasRoles;

    protected $guard_name = 'web';
    protected $table = 'paciente';
    protected $primaryKey = 'dni';  // Definir 'dni' como clave primaria
    public $incrementing = false;   // No es autoincremental
    protected $fillable = [
        'dni',
        'nombre',
        'apellido',
        'email',
        'password',
    ];
    public function setNombreAttribute($value)
    {
        $this->attributes['nombre'] = ucfirst(strtolower($value));
    }

    public function setApellidoAttribute($value)
    {
        $this->attributes['apellido'] = ucfirst(strtolower($value));
    }

    protected $hidden = [
        'password',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    // Relación con roles
    public function roles()
    {
        return $this->belongsToMany(\Spatie\Permission\Models\Role::class, 'model_has_roles', 'model_id', 'role_id');
    }

    public function patologias()
    {
        return $this->belongsToMany(
            Patologia::class,
            'paciente_patologia',
            'dni_paciente',
            'id_patologia',
            'dni',
            'id_patologia'
        );
    }
}
