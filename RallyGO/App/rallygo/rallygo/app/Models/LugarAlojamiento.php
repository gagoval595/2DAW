<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LugarAlojamiento extends Model
{
    protected $table = 'lugar_alojamiento';

    protected $fillable = [
        'nombre',
        'direccion',
        'lat',
        'lng',
        'place_id',
        'url',
        'photo_url'
    ];
        public $timestamps = false;

}
