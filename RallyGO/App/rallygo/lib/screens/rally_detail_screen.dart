// lib/screens/rally_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:rallygo/models/campeonato.dart';

class RallyDetailScreen extends StatelessWidget {
  final Campeonato campeonato;

  const RallyDetailScreen({Key? key, required this.campeonato}) : super(key: key);

  // Mapa de detalles para cada evento WRC, usando el nombre como clave
  static const Map<String, Map<String, String>> _eventDetails = {
    'Rallye Monte-Carlo': {
      'location': 'Gap, Provence-Alpes-Côte d\'Azur, Francia, con inicio y fin en Mónaco',
      'surface': 'Asfalto y nieve',
      'totalStages': '18',
      'totalDistance': '343.80 km',
      'history': 'El rally más antiguo del mundo, iniciado en 1911. Forma parte del WRC desde 1973. Conocido por sus etapas mixtas de asfalto seco, mojado y nevado, especialmente en los Alpes franceses.',
      'funFacts': 'Sébastien Ogier tiene el récord con 10 victorias. Famoso por sus etapas nocturnas y el icónico final en el Puerto de Mónaco. Las condiciones climáticas impredecibles lo hacen uno de los más desafiantes.',
    },
    'Rally Sweden': {
      'location': 'Umeå, Västerbotten County, Suecia',
      'surface': 'Nieve y hielo',
      'totalStages': '18',
      'totalDistance': '300.22 km',
      'history': 'Uno de los pocos rallies del WRC en nieve y hielo, parte del campeonato desde 1973. Conocido por sus altas velocidades y condiciones extremas en los bosques suecos.',
      'funFacts': 'Apodado "Midnight Sun Rally" por su ubicación en el norte de Suecia. Los pilotos usan neumáticos con clavos para mayor agarre. Es un favorito por sus etapas rápidas y paisajes nevados.',
    },
    'Safari Rally Kenya': {
      'location': 'Naivasha, Kenia',
      'surface': 'Grava',
      'totalStages': '19',
      'totalDistance': '363.56 km',
      'history': 'Legendario rally africano, parte del WRC desde 1973 hasta 2002, regresó en 2021. Conocido por sus terrenos accidentados y paisajes espectaculares.',
      'funFacts': 'Famoso por sus etapas en la sabana, con animales salvajes cerca. Es uno de los rallies más duros debido a las condiciones de polvo y grava.',
    },
    'Rally Islas Canarias': {
      'location': 'Las Palmas, Gran Canaria, España',
      'surface': 'Asfalto',
      'totalStages': '13',
      'totalDistance': '200.00 km',
      'history': 'Nuevo en el WRC para 2025, previamente parte del ERC. Conocido por sus carreteras de asfalto sinuosas en las montañas de Gran Canaria.',
      'funFacts': 'Las carreteras volcánicas ofrecen un agarre único. Es el primer evento WRC en las Islas Canarias, atrayendo a muchos espectadores locales.',
    },
    'Rally de Portugal': {
      'location': 'Matosinhos, Oporto, Portugal',
      'surface': 'Grava',
      'totalStages': '20',
      'totalDistance': '337.51 km',
      'history': 'Parte del WRC desde 1973, conocido por sus etapas rápidas de grava en el norte de Portugal y su ambiente festivo.',
      'funFacts': 'El salto de Fafe es uno de los más famosos del WRC, con miles de espectadores. Kalle Rovanperä ha dominado recientemente.',
    },
    'Rally Italia Sardegna': {
      'location': 'Alghero, Cerdeña, Italia',
      'surface': 'Grava',
      'totalStages': '16',
      'totalDistance': '320.00 km',
      'history': 'En el WRC desde 2004, reemplazó al Rallye Sanremo. Sus estrechas carreteras de grava son un desafío técnico.',
      'funFacts': 'Conocido por sus etapas polvorientas y calor intenso. Ott Tänak ha tenido múltiples victorias aquí.',
    },
    'Acropolis Rally Greece': {
      'location': 'Atenas, Grecia',
      'surface': 'Grava',
      'totalStages': '15',
      'totalDistance': '300.00 km',
      'history': 'Parte del WRC desde 1973, conocido como el "Rally de los Dioses" por su terreno rocoso y mitología griega.',
      'funFacts': 'Sus carreteras montañosas son de las más duras, castigando los neumáticos. Colin McRae tiene un récord histórico aquí.',
    },
    'Rally Estonia': {
      'location': 'Tartu, Estonia',
      'surface': 'Grava',
      'totalStages': '21',
      'totalDistance': '300.00 km',
      'history': 'En el WRC desde 2020, conocido por sus carreteras rápidas y saltos espectaculares.',
      'funFacts': 'Kalle Rovanperä, un local, ha dominado este rally. Es uno de los favoritos por sus etapas técnicas y velocidad.',
    },
    'Rally Finland': {
      'location': 'Jyväskylä, Finlandia',
      'surface': 'Grava',
      'totalStages': '22',
      'totalDistance': '315.00 km',
      'history': 'Conocido como el "Rally de los Mil Lagos", parte del WRC desde 1973. Famoso por sus saltos y velocidad extrema.',
      'funFacts': 'El salto de Ouninpohja es legendario. Los pilotos finlandeses, como Hannu Mikkola, han dominado históricamente.',
    },
    'Rally del Paraguay': {
      'location': 'Asunción, Paraguay',
      'surface': 'Grava',
      'totalStages': '18',
      'totalDistance': '310.00 km',
      'history': 'Nuevo en el WRC para 2025, trae el campeonato de vuelta a Sudamérica con carreteras de grava desafiantes.',
      'funFacts': 'Primer rally WRC en Paraguay, esperado por su terreno variado y clima cálido.',
    },
    'Rally Chile Bio Bío': {
      'location': 'Concepción, Región del Bío Bío, Chile',
      'surface': 'Grava',
      'totalStages': '16',
      'totalDistance': '310.00 km',
      'history': 'En el WRC desde 2019, conocido por sus bosques y carreteras de grava en el sur de Chile.',
      'funFacts': 'Sus paisajes boscosos son impresionantes. Ott Tänak ganó la primera edición en 2019.',
    },
    'Central European Rally': {
      'location': 'Passau, Alemania, Austria y República Checa',
      'surface': 'Asfalto',
      'totalStages': '18',
      'totalDistance': '310.00 km',
      'history': 'Introducido en 2022, cruza tres países con carreteras de asfalto variadas.',
      'funFacts': 'Único rally WRC que atraviesa múltiples países en una sola edición. Thierry Neuville ha destacado aquí.',
    },
    'Rally Japan': {
      'location': 'Nagoya, Aichi, Japón',
      'surface': 'Asfalto',
      'totalStages': '19',
      'totalDistance': '300.00 km',
      'history': 'En el WRC desde 2004, conocido por sus estrechas carreteras de asfalto y cultura japonesa.',
      'funFacts': 'Famoso por sus etapas en montañas boscosas y el apoyo masivo de fans locales.',
    },
    'Rally Saudi Arabia': {
      'location': 'Jeddah, Arabia Saudita',
      'surface': 'Grava y desierto',
      'totalStages': '16',
      'totalDistance': '320.00 km',
      'history': 'Nuevo en el WRC para 2025, introduce el rally en el desierto de Arabia Saudita.',
      'funFacts': 'Inspirado en el Dakar, sus etapas desérticas son únicas en el WRC. Primer evento WRC en el Medio Oriente.',
    },
  };

  @override
  Widget build(BuildContext context) {
    // Obtener los detalles del evento o usar valores por defecto
    final details = _eventDetails[campeonato.nombre] ?? {
      'location': 'No disponible',
      'surface': 'No disponible',
      'totalStages': 'No disponible',
      'totalDistance': 'No disponible',
      'history': 'No hay información histórica disponible.',
      'funFacts': 'No hay datos interesantes disponibles.',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(campeonato.nombre),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen principal
            Image.asset(
              'assets/images/campeonatos/${campeonato.nombre.toLowerCase().replaceAll(' ', '_')}.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 200,
                color: Colors.grey[200],
                child: const Center(child: Icon(Icons.broken_image, size: 48)),
              ),
            ),
            // Información Básica
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Información Básica',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[900]),
                      ),
                      const SizedBox(height: 8),
                      Text('Fecha: ${campeonato.fecha}', style: const TextStyle(fontSize: 16)),
                      Text('Ubicación: ${details['location']}', style: const TextStyle(fontSize: 16)),
                      Text('Superficie: ${details['surface']}', style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            // Etapas
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Etapas',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[900]),
                      ),
                      const SizedBox(height: 8),
                      Text('Total Etapas: ${details['totalStages']}', style: const TextStyle(fontSize: 16)),
                      Text('Distancia Total: ${details['totalDistance']}', style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            // Historia
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Historia',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[900]),
                      ),
                      const SizedBox(height: 8),
                      Text(details['history']!, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            // Datos Interesantes
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Datos Interesantes',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[900]),
                      ),
                      const SizedBox(height: 8),
                      Text(details['funFacts']!, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}