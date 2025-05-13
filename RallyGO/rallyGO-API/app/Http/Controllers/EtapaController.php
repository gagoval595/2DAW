<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Etapa;
use App\Models\Campeonato;
use App\Models\Servicio;
use Illuminate\Support\Facades\Validator;
use Exception;

class EtapaController extends Controller
{
    public function index()
    {
        try {
            $etapas = Etapa::with('campeonato')->get();
            
            return response()->json([
                'etapas' => $etapas
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al obtener las etapas',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'campeonato_id' => 'required|exists:campeonato,id',
                'nombre' => 'required|string|max:100',
                'fecha' => 'required|string|max:50',
                'pais' => 'required|string|max:50',
                'latitud' => 'required|numeric|between:-90,90',
                'longitud' => 'required|numeric|between:-180,180',
                'image' => 'nullable|string'
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'message' => 'Error de validación',
                    'errors' => $validator->errors()
                ], 422);
            }

            $etapa = Etapa::create($request->all());

            return response()->json([
                'message' => 'Etapa creada con éxito',
                'etapa' => $etapa
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al crear la etapa',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show(string $id)
    {
        try {
            $etapa = Etapa::with('campeonato')->findOrFail($id);
            
            return response()->json([
                'message' => 'Etapa recuperada con éxito',
                'etapa' => $etapa
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Etapa no encontrada',
                'error' => $e->getMessage()
            ], 404);
        }
    }

    public function update(Request $request, string $id)
    {
        try {
            $validator = Validator::make($request->all(), [
                'campeonato_id' => 'sometimes|required|exists:campeonato,id',
                'nombre' => 'sometimes|required|string|max:100',
                'fecha' => 'sometimes|required|string|max:50',
                'pais' => 'sometimes|required|string|max:50',
                'latitud' => 'sometimes|required|numeric|between:-90,90',
                'longitud' => 'sometimes|required|numeric|between:-180,180'
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'message' => 'Error de validación',
                    'errors' => $validator->errors()
                ], 422);
            }

            $etapa = Etapa::findOrFail($id);
            $etapa->update($request->all());

            return response()->json([
                'message' => 'Etapa actualizada con éxito',
                'etapa' => $etapa
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al actualizar la etapa',
                'error' => $e->getMessage()
            ], 500);
        }
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
