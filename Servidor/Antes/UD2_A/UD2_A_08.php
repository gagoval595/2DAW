<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 2.8 Gabriel</title>
</head>
<body>
    <?php 
        echo "Producto" . " - " . "Precio/kg" . " - " . "Pes" . " - " . "Preu <br>";
        
        //calcul de la judia
        define("preu_judia", 3.50);
        $pes_judias = 1.21;
        $cost_judias = preu_judia * $pes_judias;
        echo "Judia - " . preu_judia . " - " . $pes_judias . " - " . number_format($cost_judias,2) . "€ <br>";
        
        //cálcul de les creïlles
        define("preu_creilles",0.4);
        $pes_creilles = 1.73;
        $cost_creilles = preu_creilles * $pes_creilles;
        echo "Creilla - " . preu_creilles . " - " . $pes_creilles . " - " . number_format($cost_creilles,2) . "€ <br>";
       
        //cálcul de les tomaques
        define("preu_tomaques",1);
        $pes_tomaques= 2.08;
        $cost_tomaques = preu_tomaques * $pes_tomaques;
        echo "Tomaques - " . preu_tomaques . " - " . $pes_tomaques . " - " . number_format($cost_tomaques,2) . "€ <br>";
     
        //cálcul de les pomes
        define("preu_pomes",1.20);
        $pes_pomes = 2.15;
        $cost_pomes = preu_pomes * $pes_pomes;
        echo "Pomes - " . preu_pomes . " - " . $pes_pomes . " - " . number_format($cost_pomes,2) . "€ <br>";

        //cálcul del raïm 
        define("preu_raim",2.50);
        $pes_raim =2.15;
        $cost_raim = preu_raim * $pes_raim;
        echo "Raïm - " . preu_raim . " - " . $pes_raim . " - " . number_format($cost_raim,2) . "€ <br>";

        $total = $cost_judias + $cost_creilles + $cost_tomaques + $cost_tomaques + $cost_pomes + $cost_raim;
        echo "Total : " .  number_format($total, 2) . "<br>";
        print "Gracias por su compra";
    ?>
</body>
</html>