<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    public $timestamps = false;
    protected $table = 'reserva';
    protected $fillable = [
        'usuario_id',
        'servicio_id',
        'estado_reserva_id',
        'fecha',
    ];

    public function usuario()
    {
        return $this->belongsTo(Usuario::class);
    }

    public function servicio()
    {
        return $this->belongsTo(Servicio::class);
    }

    public function estado()
    {
        return $this->belongsTo(Estado_reserva::class,'estado_reserva_id');
    }
}
