<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cliente</title>
</head>
<body>
    <?php
        class Cliente extends Videoclub{
            private $nombre;
            private $productosAlqilados =[];

            public function __construct($nombre){
                $this->nombre = $nombre;
            }
            public function alquilarProducto($producto){
                $this->productosAlquilados[] = $producto;
            }

            public function __toString(){
                return "Cliente " . $this->nombre . " Productos alquilados: " . implode(", ", $this->productosAlquilados);
            }
        }
    ?>
</body>
</html>