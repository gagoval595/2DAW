<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Temporada;

class TemporadaController extends Controller
{
    public function index()
    {
        $championships = Temporada::all();
        return response()->json($championships);
    }

    // Obtener un campeonato por ID
    public function show($id)
    {
        $championship = Temporada::findOrFail($id);
        return response()->json($championship);
    }

    public function getCampeonatos($id)
    {
        $temporada = Temporada::find($id);
        if ($temporada) {
            return response()->json($temporada->campeonatos);  // Retorna los campeonatos asociados
        } else {
            return response()->json(['message' => 'Temporada no encontrada'], 404);
        }
    }
}
