<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Noticia extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'noticia';

    // La tabla tiene created_at y updated_at
    public $timestamps = true;

    // Campos que se pueden llenar masivamente
    protected $fillable = [
        'titulo',
        'resumen',
        'fecha_publicacion',
        'url',
        'url_imagen'
    ];
}
