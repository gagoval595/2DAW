<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    protected $table = 'servicio';
    protected $fillable = [
      'etapa_id',
      'tipo',
      'descripcion',
      'precio',
      'ubicacion',
    ];

    public function etapa()
    {
        return $this->belongsTo(Etapa::class);
    }
}
