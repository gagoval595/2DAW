<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Etapa;
use App\Models\Campeonato;
use App\Models\Servicio;

class EtapaController extends Controller
{
    public function index()
    {
        $etapas = Etapa::with(['campeonato', 'servicios'])->get();

        return response()->json([
            'message' => 'Lista de etapas',
            'etapas' => $etapas,
        ], 200);
    }

    public function store(Request $request)
    {
        $request->validate([
            'campeonato_id' => 'required|exists:campeonato,id',
            'nombre' => 'required|string|max:100',
            'fecha' => 'nullable|date',
        ]);

        $etapa = Etapa::create($request->all());

        return response()->json([
            'message' => 'Etapa creada con éxito',
            'etapa' => $etapa,
        ], 201);
    }

    public function show(string $id)
    {
        $etapa = Etapa::with(['campeonato', 'servicios'])->find($id);

        if (!$etapa) {
            return response()->json([
                'message' => 'Etapa no encontrada',
            ], 404);
        }

        return response()->json([
            'message' => 'Detalles de la etapa',
            'etapa' => $etapa,
        ], 200);
    }

    public function update(Request $request, string $id)
    {
        $etapa = Etapa::find($id);

        if (!$etapa) {
            return response()->json([
                'message' => 'Etapa no encontrada',
            ], 404);
        }

        $request->validate([
            'campeonato_id' => 'sometimes|required|exists:campeonato,id',
            'nombre' => 'sometimes|required|string|max:100',
            'fecha' => 'sometimes|nullable|date',
        ]);

        $etapa->update($request->all());

        return response()->json([
            'message' => 'Etapa actualizada con éxito',
            'etapa' => $etapa,
        ], 200);
    }

    public function destroy(string $id)
    {
        $etapa = Etapa::find($id);

        if (!$etapa) {
            return response()->json([
                'message' => 'Etapa no encontrada',
            ], 404);
        }

        $etapa->delete();

        return response()->json([
            'message' => 'Etapa eliminada con éxito',
        ], 200);
    }
}
