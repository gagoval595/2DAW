<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 3.2 Gabriel</title>
</head>
<body>
    <?php
        function analitzarFrase($frase){
            echo "<b>FRASE A ANALIZAR </b>: " . $frase . "<br><br>";

            //Contar lletres totals sense espais
            $totalLetres = mb_strlen(str_ireplace(" ","",$frase));
            echo $totalLetres . " lletres <br>";

            //Contar els espais en blanc 
            $espaisEnBlanc = substr_count($frase, " ");
            echo $espaisEnBlanc . " espais en blanc <br>";

            //Contar nº de paraules
            $paraules = explode(" ", $frase);
            echo count($paraules) . " paraules <br><br>"; 

            //Mostrar num de lletres de cada paraula
            foreach($paraules as $paraula){
                $numLletres = strlen($paraula);
                echo $paraula ." " . $numLletres . " letras <br>";
            }
        }
        analitzarFrase("El perro de San Roque no tiene rabo");
  ?>
    
</body>
</html>