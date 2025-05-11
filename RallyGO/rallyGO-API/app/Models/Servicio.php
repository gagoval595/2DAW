<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    protected $table = 'servicio';

    protected $fillable = [
        'id',
        'etapa_id',
        'tipo_servicio_id',
        'ubicación',
        'latitud',
        'longitud',
    ];
   
    protected $casts = [
        'latitud' => 'decimal:8',
        'longitud' => 'decimal:8',
    ];

    public function etapa()
    {
        return $this->belongsTo(Etapa::class, 'etapa_id');
    }

    public function tipoServicio()
    {
        return $this->belongsTo(TipoServicio::class, 'tipo_servicio_id');
    }
    
    public function fotos()
    {
        return $this->belongsTo(Foto::class);
    }
}
