<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    protected $fillable = [
        'servicio_id', 
        'nombre_cliente',
        'email_cliente',
        'telefono',
        'fecha_inicio',
        'fecha_fin',
        'numero_personas',
        'comentarios'
    ];

    public function servicio()
    {
        return $this->belongsTo(Servicio::class);
    }
}