<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*CRUD Usuario*/
use App\Http\Controllers\UsuarioController;

Route::get('/usuario', [UsuarioController::class, 'index']);
Route::get('/usuario/{id}', [UsuarioController::class, 'show']);
Route::post('/usuario', [UsuarioController::class, 'store']);
Route::put('/usuario/{id}', [UsuarioController::class, 'update']);
Route::delete('/usuario/{id}', [UsuarioController::class, 'destroy']);

/*CRUD Servicio*/
use App\Http\Controllers\ServicioController;

Route::get('/servicio', [ServicioController::class, 'index']);
Route::get('/servicio/{id}', [ServicioController::class, 'show']);
Route::post('/servicio', [ServicioController::class, 'store']);
Route::put('/servicio/{id}', [ServicioController::class, 'update']);
Route::delete('/servicio/{id}', [ServicioController::class, 'destroy']);

/*CRUD Etapa*/
use App\Http\Controllers\EtapaController;
Route::get('/etapa', [EtapaController::class, 'index']);
Route::get('/etapa/{id}', [EtapaController::class, 'show']);
Route::post('/etapa', [EtapaController::class, 'store']);
Route::put('/etapa/{id}', [EtapaController::class, 'update']);
Route::delete('/etapa/{id}', [EtapaController::class, 'destroy']);

/*CRUD Tipo Servicio*/
use App\Http\Controllers\TipoServicioController;
Route::get('/tipo_servicio', [TipoServicioController::class, 'index']);
Route::get('/tipo_servicio/{id}', [TipoServicioController::class, 'show']);
Route::post('/tipo_servicio', [TipoServicioController::class, 'store']);
Route::put('/tipo_servicio/{id}', [TipoServicioController::class, 'update']);
Route::delete('/tipo_servicio/{id}', [TipoServicioController::class, 'destroy']);

/*CRUD Foto*/
use App\Http\Controllers\FotoController;
Route::get('/foto', [FotoController::class, 'index']);
Route::get('/foto/{id}', [FotoController::class, 'show']);
Route::post('/foto', [FotoController::class, 'store']);
Route::put('/foto/{id}', [FotoController::class, 'update']);
Route::delete('/foto/{id}', [FotoController::class, 'destroy']);

/*CRUD Galeria_foto*/

use App\Http\Controllers\GaleriaFotoController;
Route::get('/galeria_foto', [GaleriaFotoController::class, 'index']);
Route::get('/galeria_foto/{id}', [GaleriaFotoController::class, 'show']);
Route::post('/galeria_foto', [GaleriaFotoController::class, 'store']);
Route::put('/galeria_foto/{id}', [GaleriaFotoController::class, 'update']);
Route::delete('/galeria_foto/{id}', [GaleriaFotoController::class, 'destroy']);

