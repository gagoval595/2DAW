<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 2.13 Gabriel</title>
</head>
<body>
    <?php
        for ($hora = 0; $hora < 24; $hora++) {
            for ($cuartos = 0; $cuartos < 60; $cuartos+=15) {
                echo str_pad($hora, 2 ,"0", STR_PAD_LEFT).":" . str_pad($cuartos, 2, "0", STR_PAD_LEFT)."<br>";
        }
    }
    ?>
</body>
</html>