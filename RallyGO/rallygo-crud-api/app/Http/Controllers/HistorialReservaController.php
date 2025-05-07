<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\Reserva;
use App\Http\Resources\HistorialReservaResource;

class HistorialReservaController extends Controller
{
    public function index(Reserva $reserva)
    {
        $historial = $reserva->historial()->get();
        return HistorialReservaResource::collection($historial);
    }
}