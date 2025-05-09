import 'package:flutter/material.dart';
import '../api/Api.dart';
import '../models/campeonato.dart';
import '../widget/campeonatoCard.dart';
import 'championship_events_screen.dart';

class EventosScreen extends StatefulWidget {
  @override
  _EventosScreenState createState() => _EventosScreenState();
}

class _EventosScreenState extends State<EventosScreen> {
  final ApiService apiService = ApiService(); // Cambiar por la URL de la API
  List<Campeonato> campeonatos = [];

  @override
  void initState() {
    super.initState();
    _loadCampeonatos();
  }

  void _loadCampeonatos() async {
    try {
      final response = await apiService.fetchCampeonatos();
      setState(() {
        campeonatos = response;
      });
    } catch (error) {
      print("Error al cargar campeonatos eventos screen: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
