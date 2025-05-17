<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    $routes = [
        [
            'name' => 'Usuarios',
            'endpoint' => '/api/usuario',
            'methods' => ['GET', 'POST', 'PUT', 'DELETE']
        ],
        [
            'name' => 'Campeonatos',
            'endpoint' => '/api/campeonato',
            'methods' => ['GET', 'POST', 'PUT', 'DELETE']
        ],
        [
            'name' => 'Etapas',
            'endpoint' => '/api/etapa',
            'methods' => ['GET', 'POST', 'PUT', 'DELETE']
        ],
        [
            'name' => 'Servicios',
            'endpoint' => '/api/servicio',
            'methods' => ['GET', 'POST', 'PUT', 'DELETE']
        ],
        [
            'name' => 'Tipos de Servicio',
            'endpoint' => '/api/tipo-servicio',
            'methods' => ['GET', 'POST', 'PUT', 'DELETE']
        ],
        [
            'name' => 'Galería de Fotos',
            'endpoint' => '/api/galeria',
            'methods' => ['GET', 'POST', 'DELETE']
        ],
        [
            'name' => 'Foto de Galeria',
            'endpoint' => '/api/galeria/{id}',	
            'methods' => ['GET', 'POST', 'DELETE']
        ]
    ];

    return view('welcome', ['routes' => $routes]);
});