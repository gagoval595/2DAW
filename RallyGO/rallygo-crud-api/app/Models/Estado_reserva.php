<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Estado_reserva extends Model
{
    protected $table = 'estado_reserva';
    protected $fillable = ['nombre','descripcion'];
}
