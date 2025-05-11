<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoServicio extends Model
{
    protected $table = 'tipo_servicio';
    
    protected $fillable = [
        'tipo',
        'nombre',
        'descripcion'
    ];

    public function servicios()
    {
        return $this->hasMany(Servicio::class, 'tipo_servicio_id');
    }
}