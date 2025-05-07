<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TemporadaController;
use App\Http\Controllers\AlojamientoController;
use App\Http\Controllers\RankingController;
use App\Http\Controllers\CampeonatoController;


Route::get('campeonatos', [TemporadaController::class, 'index']);
Route::get('campeonatos/{id}', [TemporadaController::class, 'show']);
Route::get('temporadas', [TemporadaController::class, 'index']);
Route::get('temporadas/{id}', [TemporadaController::class, 'show']);
Route::get('/temporada/{id}/campeonatos', [TemporadaController::class, 'getCampeonatos']);
Route::post('/alojamientos', [AlojamientoController::class, 'store']);
Route::get('campeonatos/{id}/resultados', [TemporadaController::class, 'resultados']);
Route::get('championships/{id}/clasificacion', [TemporadaController::class, 'clasificacion']);
Route::apiResource('temporadas', TemporadaController::class)->only(['index','show']);
Route::get('temporadas/{temporadda}/rallies/{campeonato}/ranking', [RankingController::class, 'rally']);
Route::get('temporadas/{temporadda}/rallies/{campeonato}/standings', [RankingController::class, 'standings']);


