<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\Foto;
use App\Http\Requests\FotoRequest;
use App\Http\Resources\FotoResource;

class FotoController extends Controller
{
    public function index()
    {
        return FotoResource::collection(Foto::all());
    }

    public function store(FotoRequest $request)
    {
        $foto = Foto::create($request->validated());
        return new FotoResource($foto);
    }

    public function show(Foto $foto)
    {
        return new FotoResource($foto);
    }

    public function destroy(Foto $foto)
    {
        $foto->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
