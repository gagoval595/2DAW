// lib/screens/calendario_screen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rallygo/models/championship.dart';
import 'package:rallygo/models/campeonato.dart';
import 'package:rallygo/screens/widget/championshipCard.dart';

class CalendarioScreen extends StatelessWidget {
  // lib/screens/calendario_screen.dart (parcial)
  final List<Championship> championships = [
    Championship(
      id: 'wrc',
      name: 'WRC',
      imageAsset: 'assets/images/championships/wrc.jpg',
      events: [
        Campeonato(
          id: 1,
          nombre: 'Rallye Monte-Carlo',
          fecha: '22/1 - 26/1',
          championshipId: 'wrc',
          ubicacion:
              'Gap, Provence-Alpes-Côte d\'Azur, Francia, con inicio y fin en Mónaco',
          superficie: 'Asfalto y nieve',
          totalTramos: 18,
          distanciaTotal: 343.80,
          historia:
              'El rally más antiguo del mundo, iniciado en 1911. Forma parte del WRC desde 1973.',
          datosCuriosos: 'Sébastien Ogier tiene el récord con 10 victorias.',
          imageAsset: 'rallye_monte-carlo.jpg',
          centro: LatLng(44.5580, 6.0789),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 2,
          nombre: 'Rally Sweden',
          fecha: '13/2 - 16/2',
          championshipId: 'wrc',
          ubicacion: 'Umeå, Västerbotten, Suecia',
          superficie: 'Nieve',
          totalTramos: 18,
          distanciaTotal: 300.22,
          historia:
              'Se celebró por primera vez en 1950 como el Rally al Sol de Medianoche; desde 1965 es un evento invernal y parte del WRC desde 1973.',
          datosCuriosos:
              'Stig Blomqvist ostenta el récord de más victorias con siete triunfos.',
          imageAsset: 'rally_sweden.jpg',
          centro: LatLng(63.8258, 20.2630),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 3,
          nombre: 'Safari Rally Kenya',
          fecha: '20/3 - 23/3',
          championshipId: 'wrc',
          ubicacion: 'Naivasha, condado de Nakuru, Kenia',
          superficie: 'Grava',
          totalTramos: 21,
          distanciaTotal: 384.86,
          historia:
              'Se celebró por primera vez en 1953 como el East African Coronation Safari; fue parte del WRC de 1973 a 2002 y regresó en 2021.',
          datosCuriosos:
              'Shekhar Mehta y Carl Tundo comparten el récord de más triunfos con cinco victorias cada uno.',
          imageAsset: 'safari_rally_kenya.jpg',
          centro: LatLng(-0.7167, 36.4300),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 4,
          nombre: 'Rally Islas Canarias',
          fecha: '24/4 - 27/4',
          championshipId: 'wrc',
          ubicacion: 'Las Palmas, Gran Canaria, España',
          superficie: 'Asfalto',
          totalTramos: 18,
          distanciaTotal: 301.30,
          historia:
              'Se celebra desde 1977 como Rally El Corte Inglés y se incorporó al WRC en 2025.',
          datosCuriosos:
              'Kalle Rovanperä ganó 15 de los 18 tramos en su debut mundialista en Canarias.',
          imageAsset: 'rally_islas_canarias.jpg',
          centro: LatLng(28.1235, -15.4363),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 5,
          nombre: 'Rally de Portugal',
          fecha: '15/5 - 18/5',
          championshipId: 'wrc',
          ubicacion: 'Matosinhos y Porto, Portugal',
          superficie: 'Grava',
          totalTramos: 24,
          distanciaTotal: 344.50,
          historia:
              'Primera edición en 1967; debutó en el WRC inaugural en 1973, se interrumpió en 2002–2006 y regresó en 2007.',
          datosCuriosos:
              'Sébastien Ogier ostenta el récord de seis victorias en Portugal.',
          imageAsset: 'rally_de_portugal.jpg',
          centro: LatLng(41.1579, -8.6291),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 6,
          nombre: 'Rally Italia Sardegna',
          fecha: '5/6 - 8/6',
          championshipId: 'wrc',
          ubicacion: 'Olbia, Cerdeña, Italia',
          superficie: 'Grava',
          totalTramos: 16,
          distanciaTotal: 324.64,
          historia:
              'Se celebra desde 2004 como Rally d\'Italia Sardegna, parte del WRC desde su inauguración.',
          datosCuriosos: 'Hasta 2010 se denominaba Rally d\'Italia Sardegna.',
          imageAsset: 'rally_italia_sardegna.jpg',
          centro: LatLng(40.9230, 9.4960),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 7,
          nombre: 'Acropolis Rally Greece',
          fecha: '26/6 - 29/6',
          championshipId: 'wrc',
          ubicacion: 'Lamia, Grecia Central, Grecia',
          superficie: 'Grava',
          totalTramos: 17,
          distanciaTotal: 341.43,
          historia:
              'Se disputa desde 1951 y forma parte del WRC desde su primera temporada en 1973.',
          datosCuriosos:
              'Muchos pilotos lo comparan con el Safari Rally por su dureza y condiciones extremas.',
          imageAsset: 'acropolis_rally_greece.jpg',
          centro: LatLng(38.9014, 22.4342),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 8,
          nombre: 'Rally Estonia',
          fecha: '17/7 - 20/7',
          championshipId: 'wrc',
          ubicacion: 'Tartu, condado de Tartu, Estonia',
          superficie: 'Grava',
          totalTramos: 12,
          distanciaTotal: 308.35,
          historia:
              'Se celebra desde 2010; debutó en el WRC en 2021 tras estar en el ERC y regresó al WRC en 2025.',
          datosCuriosos:
              'Es uno de los rallies más rápidos del calendario, con tramos superfluídos y velocidades medias superiores a 120 km/h.',
          imageAsset: 'rally_estonia.jpg',
          centro: LatLng(58.3776, 26.7290),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 9,
          nombre: 'Rally Finland',
          fecha: '31/7 - 3/8',
          championshipId: 'wrc',
          ubicacion: 'Jyväskylä, Finlandia Central, Finlandia',
          superficie: 'Grava',
          totalTramos: 20,
          distanciaTotal: 307.22,
          historia:
              'Se disputa desde 1951; tras el inicio del WRC en 1973, se convirtió en la ronda finlandesa de la serie.',
          datosCuriosos:
              'Es el rally más rápido del calendario, apodado "Gran Premio de la grava".',
          imageAsset: 'rally_finland.jpg',
          centro: LatLng(62.2415, 25.7209),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 10,
          nombre: 'Rally del Paraguay',
          fecha: '28/8 - 31/8',
          championshipId: 'wrc',
          ubicacion: 'Encarnación, Itapúa, Paraguay',
          superficie: 'Grava',
          totalTramos: 19,
          distanciaTotal: 334.52,
          historia:
              'Se celebra desde 1981 como Rally Trans Itapúa; en septiembre de 2024 hubo una prueba piloto y en 2025 debutó en el WRC.',
          datosCuriosos:
              'La ruta total supera los 950 km, de los cuales 334,52 km son cronometrados.',
          imageAsset: 'rally_del_paraguay.jpg',
          centro: LatLng(-27.2172, -55.8667),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 11,
          nombre: 'Rally Chile Bio Bío',
          fecha: '11/9 - 14/9',
          championshipId: 'wrc',
          ubicacion: 'Concepción, Biobío, Chile',
          superficie: 'Grava',
          totalTramos: 16,
          distanciaTotal: 307.48,
          historia:
              'Primera edición en 2019; la edición de 2024 fue la tercera.',
          datosCuriosos:
              'El tramo "María las Cruces", de 28.31 km, es uno de los más largos y desafiantes.',
          imageAsset: 'rally_chile_bio_bio.jpg',
          centro: LatLng(-36.8201, -73.0444),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 12,
          nombre: 'Central European Rally',
          fecha: '16/10 - 19/10',
          championshipId: 'wrc',
          ubicacion: 'Bad Griesbach, Baviera, Alemania',
          superficie: 'Asfalto',
          totalTramos: 18,
          distanciaTotal: 0.0,
          // Por determinar
          historia:
              'Debutó en 2023 como evento conjunto en Alemania, Austria y República Checa.',
          datosCuriosos:
              'Primer rally del WRC que cruza territorio de tres países.',
          imageAsset: 'central_european_rally.jpg',
          centro: LatLng(48.5348, 13.0400),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 13,
          nombre: 'Rally Japan',
          fecha: '6/11 - 9/11',
          championshipId: 'wrc',
          ubicacion: 'Toyota, Aichi, Japón',
          superficie: 'Asfalto',
          totalTramos: 21,
          distanciaTotal: 302.59,
          historia:
              'Se celebró por primera vez en el WRC en 2004 como Rally de Tokachi y desde 2008 se corre en asfalto cerca de Sapporo.',
          datosCuriosos:
              'Desde 2008 el rally se disputa sobre asfalto en Hokkaidō, con tramos estrechos y sinuosos.',
          imageAsset: 'rally_japan.jpg',
          centro: LatLng(35.0831, 137.1565),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 14,
          nombre: 'Rally Saudi Arabia',
          fecha: '27/11 - 30/11',
          championshipId: 'wrc',
          ubicacion: 'Jeddah, Provincia de La Meca, Arabia Saudita',
          superficie: 'Grava',
          totalTramos: 0,
          // Por determinar
          distanciaTotal: 0,
          // Por determinar
          historia:
              'Debutó en el WRC en 2025 tras firmarse un contrato a diez años.',
          datosCuriosos:
              'Tendrá su base en el Circuito de F1 de Jeddah, único rally urbano-desértico del calendario.',
          imageAsset: 'rally_saudi_arabia.jpg',
          centro: LatLng(21.5433, 39.1728),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      ],
    ),
    Championship(
      id: 's-cer',
      name: 'S-CER',
      imageAsset: 'assets/images/championships/s-cer.jpg',
      events: [
        Campeonato(
          id: 1,
          nombre: 'Rallye Tierras Altas de Lorca',
          fecha: '7/3 - 8/3',
          championshipId: 's-cer',
          ubicacion: 'Lorca, Región de Murcia, España',
          superficie: 'Tierra',
          totalTramos: 4,
          distanciaTotal: 109.15,
          historia:
              'Primera edición en 2012; en 2025 alcanza su 14ª edición como apertura del SCER.',
          datosCuriosos:
              'José Antonio “Cohete” Suárez logró su cuarta victoria en esta edición.',
          imageAsset: 'rallye_tierras_altas_de_lorca.jpg',
          centro: LatLng(37.6680, -1.6920),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 2,
          nombre: 'Rallye Sierra Morena',
          fecha: '4/4 - 5/4',
          championshipId: 's-cer',
          ubicacion: 'Córdoba, Andalucía, España',
          superficie: 'Asfalto',
          totalTramos: 13,
          distanciaTotal: 209.96,
          historia:
              'Se celebra desde 1978, organizada por Escudería Mezquita; puntuable para el SCER desde 2021 y para el ERC.',
          datosCuriosos:
              'Incluye un tramo espectáculo en la Plaza de las Tendillas y un tramo urbano nocturno en el Paseo de la Victoria.',
          imageAsset: 'rally_sierra_morena.jpg',
          centro: LatLng(37.8882, -4.7794),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 3,
          nombre: 'Rallye de Ourense',
          fecha: '13/6 - 14/6',
          championshipId: 's-cer',
          ubicacion:
              'Ourense (Parque de San Lázaro, Expourense y tramos por la provincia)',
          superficie: 'Asfalto',
          totalTramos: 7,
          distanciaTotal: 160.00,
          historia:
              'Se celebra anualmente desde 1967, organizado por Escudería Ourense y puntuable para el SCER.',
          datosCuriosos:
              'Contará con una sección nocturna de tres tramos y una súper especial en Toén.',
          imageAsset: 'rallye_de_ourense.jpg',
          centro: LatLng(42.3350, -7.8636),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 4,
          nombre: 'Rallye Rías Baixas',
          fecha: '11/7 - 12/7',
          championshipId: 's-cer',
          ubicacion: 'Vigo, Pontevedra, Galicia, España',
          superficie: 'Asfalto',
          totalTramos: 10,
          distanciaTotal: 124.68,
          historia:
              'Se organiza desde 1963 por Escudería Rías Baixas; puntuable para el SCER desde 2021.',
          datosCuriosos:
              'Miguel Ángel Fuster ostenta el récord con cuatro victorias.',
          imageAsset: 'rallye_rias_baixas.jpg',
          centro: LatLng(42.2406, -8.7207),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 5,
          nombre: 'Rallye Princesa de Asturias',
          fecha: '12/9 - 13/9',
          championshipId: 's-cer',
          ubicacion: 'Oviedo, Principado de Asturias, España',
          superficie: 'Tierra',
          totalTramos: 0,
          // Por definir
          distanciaTotal: 0,
          // Por definir
          historia:
              'En 2025 celebra su 62ª edición, por primera vez íntegramente sobre tierra.',
          datosCuriosos:
              'Arranca en la Calle Uría de Oviedo y desplaza la asistencia a La Florida.',
          imageAsset: 'rally_princesa_de_asturias.jpg',
          centro: LatLng(43.3603, -5.8448),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 6,
          nombre: 'Rallye Villa de Llanes',
          fecha: '26/9 - 27/9',
          championshipId: 's-cer',
          ubicacion: 'Llanes, Principado de Asturias, España',
          superficie: 'Asfalto',
          totalTramos: 12,
          distanciaTotal: 190.00,
          historia:
              'Se celebra desde 1977, organizado por la Escudería Villa de Llanes; habitual del SCER.',
          datosCuriosos:
              'Recorrido costero con tramos panorámicos que ofrecen vistas al Cantábrico.',
          imageAsset: 'rally_villa_de_llanes.jpg',
          centro: LatLng(43.4250, -4.7530),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 7,
          nombre: 'RallyRACC Catalunya – Costa Daurada',
          fecha: '24/10 - 25/10',
          championshipId: 's-cer',
          ubicacion: 'Salou y PortAventura World, Tarragona, Cataluña, España',
          superficie: 'Mixto (tierra y asfalto)',
          totalTramos: 0,
          // Por definir
          distanciaTotal: 0,
          // Por definir
          historia:
              'Incluido en el SCER desde 2023; la única prueba mixta del certamen.',
          datosCuriosos:
              'Recupera el formato mixto tierra–asfalto tras años en tierra.',
          imageAsset: 'rallyracc.jpg',
          centro: LatLng(41.0774, 1.1390),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 8,
          nombre: 'Rallye La Nucía – Mediterráneo Trofeo Costa Blanca',
          fecha: '7/11 - 8/11',
          championshipId: 's-cer',
          ubicacion:
              'La Nucía y más de 30 municipios de la provincia de Alicante, España',
          superficie: 'Asfalto',
          totalTramos: 11,
          distanciaTotal: 127.00,
          historia:
              'La 31ª edición en 2025; primer año en el SCER tras ausencia en 2024.',
          datosCuriosos:
              'El tramo Relleu–Tudons, con 15.7 km, es el más largo de la prueba.',
          imageAsset: 'rallye_la_nucia.jpg',
          centro: LatLng(38.6061, -0.1013),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      ],
    ),
  ];

  CalendarioScreen({Key? key}) : super(key: key); // Removed 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: championships.length,
        itemBuilder: (context, index) {
          return ChampionshipCard(championship: championships[index]);
        },
      ),
    );
  }
}
