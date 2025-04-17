<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\UsuarioController;

Route::get('/usuario/{id}', [UsuarioController::class, 'visualiza']); // vore info usuari 

Route::post('/usuario', [UsuarioController::class, 'guarda']); // vore llista usuaris

Route::put('/usuario/{id}', [UsuarioController::class, 'actualiza']); //update un usuari
 
Route::patch('/usuario/{id}', [UsuarioController::class, 'parte']); // update part usuari

Route::delete('/usuario/{id}', [UsuarioController::class, 'elimina']); //bno, out COM EL MADRID