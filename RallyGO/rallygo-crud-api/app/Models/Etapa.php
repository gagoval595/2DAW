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
    ];

    // Relació inversa amb Campeonato
    public function campeonato()
    {
        return $this->belongsTo(Campeonato::class);
    }
}
