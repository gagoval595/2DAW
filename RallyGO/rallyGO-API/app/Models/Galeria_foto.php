<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Galeria_foto extends Model
{
    // Confirmar nombre de tabla
    protected $table = 'galeriaFoto';
    
    // Indicar columnas permitidas para asignación masiva
    protected $fillable = [
        'etapa_id',
        'url',
        'descripcion'
    ];
    
    // Opcional: quitar timestamps si la tabla no tiene esas columnas
    public $timestamps = true; // Cambiar a false si no tienes las columnas created_at y updated_at
    
    // Relación con Etapa
    public function etapa()
    {
        return $this->belongsTo(Etapa::class, 'etapa_id');
    }
}