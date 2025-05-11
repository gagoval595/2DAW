<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Campeonato extends Model
{
    protected $table = 'campeonato';

    protected $fillable = [
        'id',
        'tipo',
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];

    public function etapas()
    {
        return $this->hasMany(Etapa::class, 'campeonato_id');
    }
    public function servicios()
    {
        return $this->hasMany(Servicio::class, 'campeonato_id');
    }
}
