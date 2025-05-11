<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use App\Models\Campeonato;
use App\Models\Temporada;
use App\Models\Ranking;
use Illuminate\Support\Facades\DB;

class RankingController extends Controller
{
    // Ranking para un rallye específico
    public function rally($temporadaId, $campeonatoId): JsonResponse
    {
        // Buscar campeonato por ID o por slug si es texto
        $campeonato = is_numeric($campeonatoId)
            ? Campeonato::find($campeonatoId)
            : Campeonato::where('slug', $campeonatoId)->first();

        if (!$campeonato) {
            return response()->json(['error' => 'Campeonato no encontrado'], 404);
        }

        // Obtener resultados del rallye específico
        $resultados = Ranking::where('campeonato_id', $campeonato->id)
                    ->orderBy('posicion', 'asc')
                    ->get();

        return response()->json($resultados);
    }

    // Clasificación general de la temporada hasta este rallye
    public function standings($temporadaId, $campeonatoId): JsonResponse
    {
        // Buscar la temporada por ID o por slug
        $temporada = is_numeric($temporadaId)
            ? Temporada::find($temporadaId)
            : Temporada::where('slug', $temporadaId)->first();

        if (!$temporada) {
            return response()->json(['error' => 'Temporada no encontrada'], 404);
        }

        // Buscar campeonato por ID o por slug
        $campeonato = is_numeric($campeonatoId)
            ? Campeonato::find($campeonatoId)
            : Campeonato::where('slug', $campeonatoId)->first();

        if (!$campeonato) {
            return response()->json(['error' => 'Campeonato no encontrado'], 404);
        }

        // Obtener todos los campeonatos hasta el actual en la temporada
        $campeonatos = Campeonato::where('temporada_id', $temporada->id)
                         ->where('fecha', '<=', function($query) use ($campeonato) {
                             $query->select('fecha')
                                 ->from('campeonatos')
                                 ->where('id', $campeonato->id);
                         })
                         ->pluck('id');

        // Calcular puntos acumulados
        $clasificacion = DB::table('ranking')
                          ->whereIn('campeonato_id', $campeonatos)
                          ->select('piloto', 'equipo', DB::raw('SUM(puntos) as puntos_totales'))
                          ->groupBy('piloto', 'equipo')
                          ->orderBy('puntos_totales', 'desc')
                          ->get();

        return response()->json($clasificacion);
    }
}
