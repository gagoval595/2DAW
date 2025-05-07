<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{
    UsuarioController,
    CampeonatoController,
    EtapaController,
    TipoServicioController,
    ServicioController,
    EstadoReservaController,
    ReservaController,
    HistorialReservaController,
    FotoController,
    GaleriaFotoController,
    PrecioVariacionController
};

// CRUD
Route::apiResource('usuario',           UsuarioController::class);
Route::apiResource('campeonato',        CampeonatoController::class);
Route::apiResource('etapa',             EtapaController::class);
Route::apiResource('tipos-servicio',    TipoServicioController::class);
Route::apiResource('servicio',          ServicioController::class);
Route::apiResource('estados-reserva',   EstadoReservaController::class);
Route::apiResource('reserva',           ReservaController::class);
Route::apiResource('foto',              FotoController::class);
Route::apiResource('galeria-foto',      GaleriaFotoController::class);
Route::apiResource('precio-variacion',  PrecioVariacionController::class);

// Historial de reserva
Route::get('reserva/{reserva}/historial', [HistorialReservaController::class, 'index']);
