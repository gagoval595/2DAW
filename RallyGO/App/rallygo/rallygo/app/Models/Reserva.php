<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'reserva';

    // La tabla tiene created_at y updated_at
    public $timestamps = true;

    // Campos que se pueden llenar masivamente
    protected $fillable = [
        'usuario_id',
        'servicio_id',
        'estado_reserva_id',
        'fecha'
    ];

    // Relación con la tabla `usuario`
    public function usuario()
    {
        return $this->belongsTo(Usuario::class, 'usuario_id');
    }

    // Relación con la tabla `servicio`
    public function servicio()
    {
        return $this->belongsTo(Servicio::class, 'servicio_id');
    }
}
