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
use App\Http\Controllers\Tipo_servicioController;
Route::get('/tipo-servicio', [Tipo_servicioController::class, 'index']);
Route::get('/tipo-servicio/{id}', [Tipo_servicioController::class, 'show']);
Route::post('/tipo-servicio', [Tipo_servicioController::class, 'store']);
Route::put('/tipo-servicio/{id}', [Tipo_servicioController::class, 'update']);
Route::delete('/tipo-servicio/{id}', [Tipo_servicioController::class, 'destroy']);

/*CRUD Foto*/
use App\Http\Controllers\FotoController;
Route::get('/servicio/{servicioId}/foto', [FotoController::class, 'index']);
Route::post('/servicio/{servicioId}/foto', [FotoController::class, 'store']);
Route::delete('/servicio/{servicioId}/foto/{id}', [FotoController::class, 'destroy']);

/*CRUD Galeria_foto*/

use App\Http\Controllers\Galeria_fotoController;
Route::get('/galeria', [Galeria_fotoController::class, 'index']);
Route::get('/galeria/{id}', [Galeria_fotoController::class, 'show']);
Route::post('/galeria', [Galeria_fotoController::class, 'store']);
Route::put('/galeria/{id}', [Galeria_fotoController::class, 'update']);
Route::delete('/galeria/{id}', [Galeria_fotoController::class, 'destroy']);

/*CRUD Campeonato*/	
use App\Http\Controllers\CampeonatoController;
Route::get('/campeonato', [CampeonatoController::class, 'index']);
Route::get('/campeonato/{id}', [CampeonatoController::class, 'show']);
Route::post('/campeonato', [CampeonatoController::class, 'store']);
Route::put('/campeonato/{id}', [CampeonatoController::class, 'update']);
Route::delete('/campeonato/{id}', [CampeonatoController::class, 'destroy']);


Route::post('/test-servicio', function (Request $request) {
    return response()->json([
        'status' => 'success',
        'received' => $request->all()
    ]);
});