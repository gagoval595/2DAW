<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class RankingController extends Controller
{
    // Ranking for a single rally
    public function rally(Campeonato $campeonato): JsonResponse
    {
        $results = $campeonato->resultados()->with('pilot')->get();
        // compute points, etc.
        return response()->json($results);
    }

    // Standings after rally within a season
    public function standings(Season $season, Campeonato $campeonato): JsonResponse
    {
        $allResults = // fetch cumulative points up to this rally
        return response()->json($allResults);
    }
}
