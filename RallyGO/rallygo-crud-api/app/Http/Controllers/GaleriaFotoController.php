<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\GaleriaFoto;
use App\Http\Requests\GaleriaFotoRequest;
use App\Http\Resources\GaleriaFotoResource;

class GaleriaFotoController extends Controller
{
    public function index()
    {
        return GaleriaFotoResource::collection(GaleriaFoto::all());
    }

    public function store(GaleriaFotoRequest $request)
    {
        $galeria = GaleriaFoto::create($request->validated());
        return new GaleriaFotoResource($galeria);
    }

    public function show(GaleriaFoto $galeriaFoto)
    {
        return new GaleriaFotoResource($galeriaFoto);
    }

    public function destroy(GaleriaFoto $galeriaFoto)
    {
        $galeriaFoto->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}