<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 3.1 Gabriel</title>
</head>
<body>
    <?php
        function mostrar_impares($texto){

           for($i = 0; $i < strlen($texto); $i+=2){
            echo $texto[$i] . "<br>";
           }
        }
        mostrar_impares("A quien madruga dios le Ayuda");
    ?>
</body>
</html>