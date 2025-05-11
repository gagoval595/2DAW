<?php

namespace App\Http\Controllers;

use App\Models\Campeonato; // Añadir esta importación
use Illuminate\Http\Request;
use Exception;
use Illuminate\Support\Facades\Log;

class CampeonatoController extends Controller
{
    public function index()
    {
        try {
            $campeonatos = Campeonato::select('id', 'tipo')->get();
            
            if ($campeonatos->isEmpty()) {
                return response()->json([
                    'message' => 'No hay campeonatos disponibles',
                    'campeonatos' => []
                ], 200);
            }

            return response()->json($campeonatos, 200);

        } catch (Exception $e) {
            Log::error('Error en CampeonatoController@index: ' . $e->getMessage());
            return response()->json([
                'message' => 'Error al obtener los campeonatos',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'tipo' => 'required|string|max:100',
            ]);

            $campeonato = Campeonato::create($request->all());

            return response()->json([
                'message' => 'Campeonato creado con éxito',
                'campeonato' => $campeonato,
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al crear el campeonato',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show(string $id)
    {
        $campeonato = Campeonato::with(['etapas', 'servicios'])->find($id);

        if (!$campeonato) {
            return response()->json([
                'message' => 'Campeonato no encontrado',
            ], 404);
        }

        return response()->json([
            'message' => 'Detalles del campeonato',
            'campeonato' => $campeonato,
        ], 200);
    }

    public function update(Request $request, string $id)
    {
        $campeonato = Campeonato::find($id);

        if (!$campeonato) {
            return response()->json([
                'message' => 'Campeonato no encontrado',
            ], 404);
        }

        $request->validate([
            'tipo' => 'sometimes|required|string|max:100',
        ]);

        $campeonato->update($request->all());

        return response()->json([
            'message' => 'Campeonato actualizado con éxito',
            'campeonato' => $campeonato,
        ], 200);
    }

    public function destroy(string $id)
    {
        $campeonato = Campeonato::find($id);

        if (!$campeonato) {
            return response()->json(['message' => 'Campeonato no encontrado'], 404);
        }

        $campeonato->delete();

        return response()->json(['message' => 'Campeonato eliminado con éxito'], 200);
    }
}
