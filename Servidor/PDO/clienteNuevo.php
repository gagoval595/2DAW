<?php
$nom = 'Miguel';

try {
    $conn = new PDO("mysql:host:localhost;dbname:clientes_DB", "jefe", "jefe");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("DELETE FROM cliente WHERE nom = :nom");
    $rows = $stmt->execute(array(':nom => $nom'));
    if ($rows = 0) {
        echo 'Borrado Completo';
    }
} catch (PDOException $e) {
    echo "Error " . $e->getMessage();
}
?>