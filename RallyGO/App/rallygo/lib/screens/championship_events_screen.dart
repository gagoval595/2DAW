import 'package:flutter/material.dart';
import 'package:rallygo/screens/rally_detail_screen.dart';
import '../api/Api.dart';
import '../models/temporada.dart';
import '../models/campeonato.dart';
import '../widget/campeonatoCard.dart';

class ChampionshipEventsScreen extends StatefulWidget {
  final Temporada temporada;

  const ChampionshipEventsScreen({Key? key, required this.temporada}) : super(key: key);

  @override
  _ChampionshipEventsScreenState createState() => _ChampionshipEventsScreenState();
}

class _ChampionshipEventsScreenState extends State<ChampionshipEventsScreen> {
  final ApiService apiService = ApiService();
  List<Campeonato> events = [];

  @override
  void initState() {
    super.initState();
    _loadEvents();
  }

  void _loadEvents() async {
    try {
      print(widget.temporada.id);
      final response = await apiService.fetchEventsByTemporadaId(widget.temporada.id);
      setState(() {
        events = response;
      });
    } catch (error) {
      print("Error al cargar los eventos: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.temporada.name),
      ),
      body: events.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
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
              assetImageFile: '${event.imageAsset}',
            ),
          );
        },
      ),
    );
  }
}
