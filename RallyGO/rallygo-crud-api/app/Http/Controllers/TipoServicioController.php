<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\TipoServicio;
use App\Http\Requests\TipoServicioRequest;
use App\Http\Resources\TipoServicioResource;

class TipoServicioController extends Controller
{
    public function index()
    {
        return TipoServicioResource::collection(TipoServicio::all());
    }

    public function store(TipoServicioRequest $request)
    {
        $tipo = TipoServicio::create($request->validated());
        return new TipoServicioResource($tipo);
    }

    public function show(TipoServicio $tipoServicio)
    {
        return new TipoServicioResource($tipoServicio);
    }

    public function update(TipoServicioRequest $request, TipoServicio $tipoServicio)
    {
        $tipoServicio->update($request->validated());
        return new TipoServicioResource($tipoServicio);
    }

    public function destroy(TipoServicio $tipoServicio)
    {
        $tipoServicio->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}