import 'package:flutter/material.dart';
import 'package:rallygo/models/championship.dart';
import 'package:rallygo/screens/rally_detail_screen.dart';
import 'package:rallygo/screens/widget/campeonatoCard.dart';

class ChampionshipEventsScreen extends StatelessWidget {
  final Championship championship;

  const ChampionshipEventsScreen({Key? key, required this.championship}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mapa para asociar nombres de eventos con nombres de archivos de imagen
    final Map<String, String> imageMap = {
      'Rallye Monte-Carlo': 'rallye_monte-carlo.svg',
      'Rally Sweden': 'rally_sweden.svg',
      'Safari Rally Kenya': 'safari_rally_kenya.svg',
      'Rally Islas Canarias': 'rally_islas_canarias.svg',
      'Rally de Portugal': 'rally_de_portugal.svg',
      'Rally Italia Sardegna': 'rally_italia_sardegna.svg',
      'Acropolis Rally Greece': 'acropolis_rally_greece.svg',
      'Rally Estonia': 'rally_estonia.svg',
      'Rally Finland': 'rally_finland.svg',
      'Rally del Paraguay': 'rally_del_paraguay.svg',
      'Rally Chile Bio Bío': 'rally_chile_bio_bio.svg',
      'Central European Rally': 'central_european_rally.svg',
      'Rally Japan': 'rally_japan.svg',
      'Rally Saudi Arabia': 'rally_saudi_arabia.svg',
    };
    final Map<String, String> imageMapSCER = {
      'Rallye Tierras Altas de Lorca': 'rallye_tierras_altas_de_lorca.jpg',
      'Rally Sierra Morena': 'rally_sierra_morena.jpg',
      'Rallye de Ourense': 'rallye_de_ourense.jpg',
      'Rallye Rías Baixas': 'rallye_rias_baixas.jpg',
      'Rally Princesa de Asturias': 'rally_princesa_de_asturias.jpg',
      'Rally Villa de Llanes': 'rally_villa_de_llanes.jpg',
      'RallyRACC': 'rallyracc.jpg',
      'Rallye La Nucía': 'rallye_la_nucia.jpg',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(championship.name),
      ),
      body: ListView.builder(
        itemCount: championship.events.length,
        itemBuilder: (context, index) {
          final event = championship.events[index];
          // Use imageMapSCER for S-CER championship, otherwise use imageMap
          final imageFile = championship.id == 's-cer'
              ? imageMapSCER[event.nombre] ?? 'default_rally.jpg'
              : imageMap[event.nombre] ?? 'default_rally.jpg';
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RallyDetailScreen(campeonato: event),
                ),
              );
            },
            child: CampeonatoCard(
              campeonato: event,
              assetImageFile: imageFile,
            ),
          );
        },
      ),
    );
  }
}