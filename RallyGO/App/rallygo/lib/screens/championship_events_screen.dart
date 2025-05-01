// lib/screens/championship_events_screen.dart
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
      'Rallye Monte-Carlo': 'rallye_monte-carlo.jpg',
      'Rally Sweden': 'rally_sweden.jpg',
      'Safari Rally Kenya': 'safari_rally_kenya.jpg',
      'Rally Islas Canarias': 'rally_islas_canarias.jpg',
      'Rally de Portugal': 'rally_de_portugal.jpg',
      'Rally Italia Sardegna': 'rally_italia_sardegna.jpg',
      'Acropolis Rally Greece': 'acropolis_rally_greece.jpg',
      'Rally Estonia': 'rally_estonia.jpg',
      'Rally Finland': 'rally_finland.jpg',
      'Rally del Paraguay': 'rally_del_paraguay.jpg',
      'Rally Chile Bio Bío': 'rally_chile_bio_bio.jpg',
      'Central European Rally': 'central_european_rally.jpg',
      'Rally Japan': 'rally_japan.jpg',
      'Rally Saudi Arabia': 'rally_saudi_arabia.jpg',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(championship.name),
      ),
      body: ListView.builder(
        itemCount: championship.events.length,
        itemBuilder: (context, index) {
          final event = championship.events[index];
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
              assetImageFile: imageMap[event.nombre] ?? 'default_rally.jpg',
            ),
          );
        },
      ),
    );
  }
}