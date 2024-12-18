<?php
    try {
        $conn = new PDO("mysql:host=localhost;dbname=clientes_DB", "jefe", "jefe");
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Error al conectar en la base de datos". $e->getMessage();
    }
?>