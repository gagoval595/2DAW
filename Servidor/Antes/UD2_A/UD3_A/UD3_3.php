<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 3.3 Gabriel</title>
</head>
<body>
    <?php
   function comprovaDNI($dni){
if(strlen($dni) != 9){
    echo "Fica els caracters correctes, son 9";
}

for($i = 0; $i < 8 ; $i++){
    $ascii = ord($dni[$i]);
    if($ascii < 48 || $ascii > 57){
        echo "El document ha de tindre 8 números i una lletra en majúscula";
    }
}

$ascii

   }
    $dni ="12345678Z";
    echo comprovaDNI($dni);
    ?>
</body>
</html>