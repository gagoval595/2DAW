<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 2.11 Gabriel</title>
</head>
<body>
    <?php
       define("PREU_JUDIAS", 3.50);
       define("PREU_CREILLES", 0.40);
       define("PREU_TOMAQUES", 1.00);
       define("PREU_POMES", 1.20);
       define("PREU_RAIM", 2.50);

       $fruta = "Pera";

       switch($fruta) {
        case "Judies":
            echo PREU_JUDIAS;
        break;
        case "Creïlles":
            echo PREU_CREILLES;
        break;
        case "Tomaques":
            echo PREU_TOMAQUES;
        break;
        case "Pomes":
            echo PREU_POMES;
        break;
        case "Raím":
            echo PREU_RAIM;
        break;
        default:
            echo "No queden existències d'aquesta fruta";
        break;
        } 
    ?>
</body>
</html>