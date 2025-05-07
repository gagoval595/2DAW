<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ranking extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'ranking';

    // La tabla no tiene created_at ni updated_at
    public $timestamps = false;

    // Campos que se pueden llenar masivamente
    protected $fillable = [
        'posicion',
        'piloto',
        'puntos',
        'equipo'
    ];
}
