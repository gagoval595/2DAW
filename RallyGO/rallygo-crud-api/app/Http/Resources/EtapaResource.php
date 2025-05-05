<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EtapaResource extends JsonResource
{
    public function toArray($request)
{
    return [
        'id'            => $this->id,
        'campeonato_id' => $this->campeonato_id,
        'nombre'        => $this->nombre,
        'fecha'         => $this->fecha,
        'created_at'    => $this->created_at,
        'updated_at'    => $this->updated_at,
    ];
}

}
