<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'servicio';

    // La tabla tiene created_at
    public $timestamps = true;
    protected $dates = ['creado_en'];

    // Campos que se pueden llenar masivamente
    protected $fillable = [
        'etapa_id',
        'tipo',
        'descripcion',
        'precio',
        'ubicacion',
        'creado_en'
    ];

    // Relación con la tabla `tramo` (asumiendo que etapa_id referencia tramo)
    public function etapa()
    {
        return $this->belongsTo(Tramo::class, 'etapa_id');
    }
}
