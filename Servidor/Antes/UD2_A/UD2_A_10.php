<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 2.10 Gabriel</title>
</head>
<body>
    <?php 
        define("PREU_JUDIA", 3.5);
        define("PREU_CREILLES", 0.4);
        define("PREU_TOMAQUES", 1);
        define("PREU_POMES", 1.2);
        define("PREU_RAIM",2.5);
        echo "<h3>Judia</h3>";
        if(PREU_JUDIA > PREU_CREILLES){
            echo "La judies son més cares que les creïlles <br>";
        } else echo "Les Creïlles son més cares de les judies <br>";
        if(PREU_JUDIA > PREU_TOMAQUES){
            echo "La judies son més cares que les tomaques <br>";
        } else echo "Les tomaques son més cares de les judies <br>";
        if(PREU_JUDIA > PREU_POMES){
            echo "La judies son més cares que les pomes <br>";
        } else echo "Les pomes son més cares de les judies <br>";
        if(PREU_JUDIA > PREU_RAIM){
            echo "La judies son més cares que el raim <br>";
        } else echo "El raim es més car que les judies <br>";

        echo "<h3>Creilles</h3>";
        if(PREU_CREILLES > PREU_JUDIA){
            echo "La creïlles son més cares que les judies <br>";
        } else echo "Les judies son més cares que les creïlles <br>";
        if(PREU_CREILLES > PREU_TOMAQUES){
            echo "La creïlles son més cares que les tomaques <br>";
        } else echo "Les tomaques son més cares de les creïlles <br>";
        if(PREU_CREILLES > PREU_POMES){
            echo "La creïlles son més cares que les pomes <br>";
        } else echo "Les pomes son més cares de les creïlles <br>";
        if(PREU_CREILLES> PREU_RAIM){
            echo "La creïlles son més cares que el raim <br>";
        } else echo "El raim es més car que les creïlles <br>";

        echo "<h3>Tomaques</h3>";
        if(PREU_TOMAQUES > PREU_JUDIA){
            echo "La tomaques son més cares que les judies <br>";
        } else echo "Les judies son més cares que les tomaques <br>";
        if(PREU_TOMAQUES > PREU_CREILLES){
            echo "La tomaques son més cares que les creïlles <br>";
        } else echo "Les creïlles son més cares de les tomaques <br>";
        if(PREU_TOMAQUES > PREU_POMES){
            echo "La tomaques son més cares que les pomes <br>";
        } else echo "Les pomes son més cares de les tomaques <br>";
        if(PREU_TOMAQUES> PREU_RAIM){
            echo "La tomaques son més cares que el raim <br>";
        } else echo "El raim es més car que les tomaques <br>";

        echo "<h3>Pomes</h3>";
        if(PREU_POMES > PREU_JUDIA){
            echo "Les pomes son més cares que les judies <br>";
        } else echo "Les judies son més cares que les pomes <br>";
        if(PREU_POMES > PREU_CREILLES){
            echo "Les pomes son més cares que les creïlles <br>";
        } else echo "Les creïlles son més cares de les tomaques <br>";
        if(PREU_POMES > PREU_TOMAQUES){
            echo "Les pomes son més cares que les tomaques <br>";
        } else echo "Les tomaques son més cares de les pomes <br>";
        if(PREU_POMES> PREU_RAIM){
            echo "Les pomes son més cares que el raim <br>";
        } else echo "El raim es més car que les pomes <br>";
        
        echo "<h3>Raïm</h3>";
        if(PREU_RAIM > PREU_JUDIA){
            echo "El raïm es més car que les judies <br>";
        } else echo "Les judies son més cares que el raïm<br>";
        if(PREU_RAIM > PREU_CREILLES){
            echo "El raïm es més car que les creïlles <br>";
        } else echo "Les creïlles son més cares que el raïm <br>";
        if(PREU_RAIM > PREU_TOMAQUES){
            echo "El raïm es més car que les tomaques <br>";
        } else echo "Les tomaques son més cares que el raïm<br>";
        if(PREU_RAIM> PREU_POMES){
            echo "El raïm es més car que el raim <br>";
        } else echo "Les pomes son més cares que el raïm <br>";
    ?>
</body>
</html>