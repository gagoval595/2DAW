<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Usuario extends Authenticatable
{
    protected $table = 'usuario';

    protected $fillable = [
        'nombre_usuario',
        'correo',
        'contrasena',
    ];

    protected $hidden = [
        'contrasena',
    ];

}
