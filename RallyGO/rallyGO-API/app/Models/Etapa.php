<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Etapa extends Model
{
    protected $table = 'etapa';

    protected $fillable = [
        'campeonato_id',
        'nombre',
        'fecha',
        'pais',
        'latitud',
        'longitud',
        'image',
        'logo'
    ];

    public function campeonato()
    {
        return $this->belongsTo(Campeonato::class, 'campeonato_id');
    }

    public function servicios()
    {
        return $this->hasMany(Servicio::class, 'etapa_id');
    }
}
