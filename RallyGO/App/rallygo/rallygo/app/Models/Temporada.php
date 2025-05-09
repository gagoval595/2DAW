<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Campeonato;

class Temporada extends Model
{
    protected $table = 'temporadas';
    public $timestamps = false;
    protected $primaryKey = 'id';
    protected $keyType = 'string';
    public $incrementing = false;
    protected $fillable = ['id', 'name', 'image_asset'];

    public function campeonatos()
    {
        return $this->hasMany(Campeonato::class,);
    }
}
