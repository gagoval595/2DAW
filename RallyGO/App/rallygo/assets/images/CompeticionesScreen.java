import 'package:flutter/material.dart';

class CompeticionesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Puedes cambiar el color si lo deseas
        elevation: 0, // Sin sombra
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min, // Para que el contenido no ocupe todo el ancho
            children: [
              Image.asset(
                'assets/images/6a781de7-6685-433f-8d50-14080cd18b5b.png', // Ruta de la imagen
                height: 30, // Puedes ajustar el tamaño de la imagen
                fit: BoxFit.contain, // Mantener la proporción de la imagen
              ),
              SizedBox(width: 8), // Espacio entre la imagen y el texto
              Text(
                'LANCIA MARTINI',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Color del texto
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text('Contenido de la pantalla'),
      ),
    );
  }
}
