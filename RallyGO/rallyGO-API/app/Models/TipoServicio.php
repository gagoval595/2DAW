<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoServicio extends Model
{
    protected $table = 'tipo_servicio';
    
    protected $fillable = [
        'tipo',
        'nombre',
        'descripcion',
        'foto',
        'icono',
    ];

    private const ICONS_MAP = [
    'Hotel' => '/assets/hotel.png',
    'Parquing' => '/assets/parking.png',
    'Camping' => '/assets/camping.png',
    'Apartamento' => '/assets/apartamento.png'
];

    protected static function boot()
    {
        parent::boot();
        
        static::creating(function ($tipoServicio) {
            if (empty($tipoServicio->icono)) {
                $tipoServicio->icono = self::ICONS_MAP[$tipoServicio->tipo] ?? '/assets/localizar.png';
            }
        });
    }

    public function servicios()
    {
        return $this->hasMany(Servicio::class, 'tipo_servicio_id');
    }

    public function getDefaultIcono(): string
    {
        return self::ICONS_MAP[$this->tipo] ?? '/assets/localizar.png';
    }
}