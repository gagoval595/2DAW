<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 2.8 Gabriel</title>
</head>
<body>
    <?php
     define("radi_terra",6378.1);
     define("dist_terra_sol",149597870);
     define("PI",3.1416);

     echo "El radi de la terra es:". radi_terra . "km.<br>";
     echo "La distància de la Terra i el Sol es de: ". dist_terra_sol . "km.<br>";
    $circumferencia = 2*PI*radi_terra;
    $voltes_mon = dist_terra_sol / $circumferencia;
    echo "La distància d'una volta al sol seguint l'ecuador és: <b>$voltes_mon</b>" . "km.";
    ?>
</body>
</html>