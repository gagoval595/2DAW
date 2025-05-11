<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    protected $table = 'usuario';

    protected $fillable = [
        'id',
        'nombre',
        'telefono',
        'email',
        'password',
    ];

    public $timestamps = true;

    protected $hidden = [
        'password',
    ];


}
