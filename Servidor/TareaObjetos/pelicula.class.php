<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pelicula</title>
</head>
<body>
    <?php
        class Pelicula extends Producto{
            private $idioma;
            private $duracion;
            private $genero;
            
            public function __construct($nombre, $precio, $idioma, $duracion, $genero){
                parent::__construct($nombre, $precio);
                $this->idioma = $idioma;
                $this->duracion = $duracion;
                $this->genero = $genero;
            }
            
            public function getPrecio(){
                return $this->nombre;
            }
        }
    ?>
</body>
</html>