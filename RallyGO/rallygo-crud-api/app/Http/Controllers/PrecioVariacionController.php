<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\PrecioVariacion;
use App\Http\Requests\PrecioVariacionRequest;
use App\Http\Resources\PrecioVariacionResource;

class PrecioVariacionController extends Controller
{
    public function index()
    {
        return PrecioVariacionResource::collection(PrecioVariacion::all());
    }

    public function store(PrecioVariacionRequest $request)
    {
        $precio = PrecioVariacion::create($request->validated());
        return new PrecioVariacionResource($precio);
    }

    public function show(PrecioVariacion $precioVariacion)
    {
        return new PrecioVariacionResource($precioVariacion);
    }

    public function update(PrecioVariacionRequest $request, PrecioVariacion $precioVariacion)
    {
        $precioVariacion->update($request->validated());
        return new PrecioVariacionResource($precioVariacion);
    }

    public function destroy(PrecioVariacion $precioVariacion)
    {
        $precioVariacion->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
