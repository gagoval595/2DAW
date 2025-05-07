<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\Reserva;
use App\Http\Requests\ReservaRequest;
use App\Http\Resources\ReservaResource;

class ReservaController extends Controller
{
    public function index()
    {
        return ReservaResource::collection(Reserva::all());
    }

    public function store(ReservaRequest $request)
    {
        $reserva = Reserva::create($request->validated());
        return new ReservaResource($reserva);
    }

    public function show(Reserva $reserva)
    {
        return new ReservaResource($reserva);
    }

    public function update(ReservaRequest $request, Reserva $reserva)
    {
        $reserva->update($request->validated());
        return new ReservaResource($reserva);
    }

    public function destroy(Reserva $reserva)
    {
        $reserva->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}

