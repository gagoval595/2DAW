<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Etapa extends Model
{
    protected $table = 'etapa';

    protected $fillable = [
        'id',
        'campeonato_id',
        'nombre',
        'fecha',
        'pais'
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
