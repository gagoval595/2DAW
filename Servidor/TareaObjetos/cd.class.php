<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CD</title>
</head>
<body>
    <?php
        class CD extends Producto{
            private $duracion;
            private $genero;
        
            public function __construct($nombre, $precio, $duracion, $genero){
                parent::__construct($nombre, $precio);
                $this->duracion = $duracion;
                $this->genero = $genero;
            }
        }
    ?>
</body>
</html>