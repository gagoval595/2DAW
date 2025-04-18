<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


// API taula Usuario
use App\Http\Controllers\UsuarioController;
Route::get   ('/usuario',        [UsuarioController::class,'index']);
Route::post  ('/usuario',        [UsuarioController::class,'store']);
Route::get   ('/usuario/{id}',   [UsuarioController::class,'show']);
Route::put   ('/usuario/{id}',   [UsuarioController::class,'update']);
Route::patch ('/usuario/{id}',   [UsuarioController::class,'parte']);
Route::delete('/usuario/{id}',   [UsuarioController::class,'destroy']);

// API taula campeonato
use App\Http\Controllers\CampeonatoController;

Route::get   ('/campeonato',        [CampeonatoController::class, 'index']);
Route::get   ('/campeonato/{id}',   [CampeonatoController::class, 'show']);
Route::post  ('/campeonato',        [CampeonatoController::class, 'store']);
Route::put   ('/campeonato/{id}',   [CampeonatoController::class, 'update']);
Route::patch ('/campeonato/{id}',   [CampeonatoController::class, 'parte']);
Route::delete('/campeonato/{id}',   [CampeonatoController::class, 'destroy']);

// API taula etapa
use App\Http\Controllers\EtapaController;

Route::get   ('/etapa',        [EtapaController::class, 'index']);
Route::post  ('/etapa',        [EtapaController::class, 'store']);
Route::get   ('/etapa/{id}',   [EtapaController::class, 'show']);
Route::put   ('/etapa/{id}',   [EtapaController::class, 'update']);
Route::patch ('/etapa/{id}',   [EtapaController::class, 'parte']);
Route::delete('/etapa/{id}',   [EtapaController::class, 'destroy']);

// API taula servicio
use App\Http\Controllers\ServicioController;

Route::get   ('/servicio',        [ServicioController::class, 'index']);
Route::post  ('/servicio',        [ServicioController::class, 'store']);
Route::get   ('/servicio/{id}',   [ServicioController::class, 'show']);
Route::put   ('/servicio/{id}',   [ServicioController::class, 'update']);
Route::patch ('/servicio/{id}',   [ServicioController::class, 'parte']);
Route::delete('/servicio/{id}',   [ServicioController::class, 'destroy']);


// API taula estado_reserva
use App\Http\Controllers\Estado_reservaController;

Route::get   ('/estado_reserva',      [Estado_reservaController::class,'index']);
Route::post  ('/estado_reserva',      [Estado_reservaController::class,'store']);
Route::get   ('/estado_reserva/{id}', [Estado_reservaController::class,'show']);
Route::put   ('/estado_reserva/{id}', [Estado_reservaController::class,'update']);
Route::patch ('/estado_reserva/{id}', [Estado_reservaController::class,'parte']);
Route::delete('/estado_reserva/{id}', [Estado_reservaController::class,'destroy']);


// API taula reserva
use App\Http\Controllers\ReservaController;

Route::get   ('/reserva',         [ReservaController::class,'index']);
Route::post  ('/reserva',         [ReservaController::class,'store']);
Route::get   ('/reserva/{id}',    [ReservaController::class,'show']);
Route::put   ('/reserva/{id}',    [ReservaController::class,'update']);
Route::patch ('/reserva/{id}',    [ReservaController::class,'parte']);
Route::delete('/reserva/{id}',    [ReservaController::class,'destroy']);
