<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\Servicio;
use App\Http\Requests\ServicioRequest;
use App\Http\Resources\ServicioResource;

class ServicioController extends Controller
{
    public function index()
    {
        $servicios = Servicio::with(['etapa','tipoServicio','fotos'])->get();
        return ServicioResource::collection($servicios);
    }

    public function store(ServicioRequest $request)
    {
        $servicio = Servicio::create($request->validated());
        return new ServicioResource($servicio);
    }

    public function show(Servicio $servicio)
    {
        return new ServicioResource($servicio->load(['etapa','tipoServicio','fotos']));
    }

    public function update(ServicioRequest $request, Servicio $servicio)
    {
        $servicio->update($request->validated());
        return new ServicioResource($servicio);
    }

    public function destroy(Servicio $servicio)
    {
        $servicio->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}