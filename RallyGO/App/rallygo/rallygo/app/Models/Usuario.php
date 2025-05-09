<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'usuario';

    // La tabla tiene created_at
    public $timestamps = true;
    protected $dates = ['creado_en'];

    // Campos que se pueden llenar masivamente
    protected $fillable = [
        'nombre_usuario',
        'correo',
        'contrasena',
        'creado_en'
    ];
}
