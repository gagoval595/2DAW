<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 2.9 Gabriel</title>
</head>
<body>
<?php 
        echo "<b>Els productes que costen menys de 1.50€/kg son:</b> <br><br>";
        
        //calcul de la judia
        define("preu_judia", 3.50);

        //cálcul de les creïlles
        define("preu_creilles",0.4);

        //cálcul de les tomaques
        define("preu_tomaques",1);
 
        //cálcul de les pomes
        define("preu_pomes",1.20);

        //cálcul del raïm 
        define("preu_raim",2.50);

        //if per a comparar preus, ensenya el nom d'aquests productes que costen menys de 1.50 €/kg
        if(preu_judia < 1.50){
            echo "<b>Judia :</b> " . preu_judia . " €/kg <br>";
        }
        if(preu_creilles < 1.50){
            echo "<b>Creïlles: </b>" . preu_creilles . " €/kg <br>";
        }
        if(preu_tomaques < 1.50){
            echo "<b>Tomaques : </b>" . preu_tomaques . "€/kg <br>";
        }
        if(preu_raim < 1.50){
            echo "<b>Raim : </b>" . preu_raim . " €/kg <br>";
        }
        if(preu_pomes < 1.50){
            echo "<b>Pomes : </b>" . preu_pomes . " €/kg <br>";
        }
    ?>
</body>
</html>