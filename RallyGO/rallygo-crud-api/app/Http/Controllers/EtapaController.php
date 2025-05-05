<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\Etapa;
use App\Http\Requests\EtapaRequest;
use App\Http\Resources\EtapaResource;

class EtapaController extends Controller
{
    /**
     * GET /api/etapa
     */
    public function index()
    {
        $etapa = Etapa::all();
        return EtapaResource::collection($etapa);
    }

    /**
     * POST /api/etapa
     */
    public function store(EtapaRequest $request)
    {
        $etapa = Etapa::create($request->validated());
        return new EtapaResource($etapa);
    }

    /**
     * GET /api/etapa/{etapa}
     */
    public function show(Etapa $etapa)
    {
        return new EtapaResource($etapa);
    }

    /**
     * PUT /api/etapa/{etapa}
     */
    public function update(EtapaRequest $request, Etapa $etapa)
    {
        $etapa->update($request->validated());
        return new EtapaResource($etapa);
    }

    /**
     * DELETE /api/etapa/{etapa}
     */
    public function destroy(Etapa $etapa)
    {
        $etapa->delete();
        // 204 No Content
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
