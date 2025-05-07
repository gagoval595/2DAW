<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class Tramo extends Model
{
    // Nombre de la tabla en la base de datos
    protected $table = 'tramo';

    // La tabla no tiene created_at ni updated_at
    public $timestamps = false;

    // Campos que se pueden llenar masivamente
    protected $fillable = [
        'campeonato_id',
        'nombre'
    ];

    // Relación con la tabla `campeonato`
    public function campeonato()
    {
        return $this->belongsTo(Campeonato::class, 'campeonato_id');
    }
}
