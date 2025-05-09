<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Campeonato; // Add this line

class CampeonatoController extends Controller
{
    public function index()
    {
        $campeonatos = Campeonato::all();  // O la lógica que estés usando para obtener los campeonatos
        return response()->json($campeonatos);
    }

    // Obtener los eventos de un campeonato específico
    public function getEventosByCampeonatoId($championshipId)
    {
        // Buscamos el campeonato por su ID
        $campeonato = Campeonato::where('championship_id', $championshipId)->get();

        if ($campeonato->isEmpty()) {
            return response()->json(['error' => 'Campeonato no encontrado'], 404);
        }

        // Devolver los campeonatos con los eventos en formato JSON
        return response()->json($campeonato);
    }
}
