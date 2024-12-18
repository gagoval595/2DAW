<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juego</title>
</head>
<body>
    <?php
        class Juego extends Producto{
            private $plataforma;
            private $genero;            
            
            public function __construct ($nombre, $precio, $descripcion, $plataforma, $genero){
                parent::__construct($nombre, $precio, $descripcion);
                $this->plataforma = $plataforma;
                $this->genero = $genero;
            }

            public function getPrecio(){
                return $this->precio;
            }
        }
    ?>
</body>
</html>