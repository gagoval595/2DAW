<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\EstadoReserva;
use App\Http\Requests\EstadoReservaRequest;
use App\Http\Resources\EstadoReservaResource;

class EstadoReservaController extends Controller
{
    public function index()
    {
        return EstadoReservaResource::collection(EstadoReserva::all());
    }

    public function store(EstadoReservaRequest $request)
    {
        $estado = EstadoReserva::create($request->validated());
        return new EstadoReservaResource($estado);
    }

    public function show(EstadoReserva $estadoReserva)
    {
        return new EstadoReservaResource($estadoReserva);
    }

    public function update(EstadoReservaRequest $request, EstadoReserva $estadoReserva)
    {
        $estadoReserva->update($request->validated());
        return new EstadoReservaResource($estadoReserva);
    }

    public function destroy(EstadoReserva $estadoReserva)
    {
        $estadoReserva->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
