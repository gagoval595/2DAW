<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Galeria_foto extends Model
{
    protected $table = 'galeriaFoto';

    protected $fillable = [
        'etapa_id',
        'url'
    ];

    public function etapa()
    {
        return $this->belongsTo(Etapa::class, 'etapa_id');
    }
}