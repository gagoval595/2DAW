<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UsuarioResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id'             => $this->id,
            'nombre_usuario' => $this->nombre_usuario,
            'correo'         => $this->correo
        ];
    }
}