<?php
require 'cliente.class.php';
require 'cd.class.php';
require 'juego.class.php';
require 'pelicula.class.php';
require 'producto.class.php';
require 'videoclub.class.php';

// Crear instancia de Videoclub
$videoclub = new Videoclub("VideoClub Central");

// Crear clientes
$cli1 = new Cliente("Laura");
$cli2 = new Cliente("Ivan");
$cli3 = new Cliente("Lorenzo");
$cli4 = new Cliente("Miguel");

// Crear películas
$peli1 = new Pelicula("El Padrino");
$peli2 = new Pelicula("El Señor de los Anillos");
$peli3 = new Pelicula("El Rey León");
$peli4 = new Pelicula("Spider-Man");
$peli5 = new Pelicula("Ali-G");

// Crear CDs
$cd1 = new Cd("Monarca - Eladio Carrión");
$cd2 = new Cd("SEN2 KBRN - Eladio Carrión");
$cd3 = new Cd("Sol María - Eladio Carrión");
$cd4 = new Cd("Sauce Boyz - Eladio Carrión");
$cd5 = new Cd("3MEN2 KBRN - Eladio Carrión");

// Crear juegos
$juego1 = new Juego("Call of Duty");
$juego2 = new Juego("FIFA");
$juego3 = new Juego("WRC");
$juego4 = new Juego("Need for Speed");
$juego5 = new Juego("Assassin's Creed");

// Agregar clientes y productos al videoclub
$videoclub->agregarCliente($cli1);
$videoclub->agregarCliente($cli2);
$videoclub->agregarCliente($cli3);
$videoclub->agregarCliente($cli4);

$videoclub->agregarProducto($peli1);
$videoclub->agregarProducto($peli2);
$videoclub->agregarProducto($peli3);
$videoclub->agregarProducto($peli4);
$videoclub->agregarProducto($peli5);

$videoclub->agregarProducto($cd1);
$videoclub->agregarProducto($cd2);
$videoclub->agregarProducto($cd3);
$videoclub->agregarProducto($cd4);
$videoclub->agregarProducto($cd5);

$videoclub->agregarProducto($juego1);
$videoclub->agregarProducto($juego2);
$videoclub->agregarProducto($juego3);
$videoclub->agregarProducto($juego4);
$videoclub->agregarProducto($juego5);

// Alquilar productos
$cli1->alquilarProducto($peli1);
$cli1->alquilarProducto($juego1);
$cli2->alquilarProducto($peli2);

// Mostrar información del videoclub
echo $videoclub;
?>
