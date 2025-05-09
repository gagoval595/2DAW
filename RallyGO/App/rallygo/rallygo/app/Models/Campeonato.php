<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Temporada; // Add this line

class Campeonato extends Model
{
    protected $table = 'campeonato';
    public $timestamps = true;
    protected $fillable = [
        'nombre', 'fecha', 'championship_id', 'ubicacion', 'superficie',
        'total_tramos', 'distancia_total', 'historia', 'datos_curiosos',
        'image_asset', 'centro_lat', 'centro_lng', 'lat', 'lng'
    ];

    public function temporada()
    {
        return $this->belongsTo(Temporada::class);
    }

}
