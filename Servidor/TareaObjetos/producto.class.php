<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Producto</title>
</head>
<body>
    <?php
    abstract class  Producto {
        private $nombre;
        private $precio;

        public function __construct($nombre, $precio){
            $this->nombre = $nombre;
            $this->precio = $precio;
        }
        abstract public function getPrecio();

        public function __toString(){
            return "Producto: " . $this->nombre . "Precio: " . $this->getPrecio();
        }
    }
    ?>
</body>
</html>