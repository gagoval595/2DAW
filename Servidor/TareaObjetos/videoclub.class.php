<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VideoClub Gagoval</title>
</head>
<body>
    <?php
        class Videoclub {
           private $clientes = [];
           private $productos = [];
            
           public function agregarCliente($cliente) {
                $this -> clientes [] = $cliente;
            }
            public function agregarProducto($producto) {
                $this -> productos [] = $producto;
            }
            public function mostrarClientes() {
                foreach ($this -> clientes as $cliente) {
                    echo $cliente . "<br>";
                }
            }
            public function mostrarProductos() {
                foreach($this -> productos as $producto){
                    echo $producto . "<br>";
                }
            }
        }   
    ?>
</body>
</html>