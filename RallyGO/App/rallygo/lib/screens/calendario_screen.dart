import 'package:flutter/material.dart';
import 'package:rallygo/models/temporada.dart';
import 'package:rallygo/widget/temporadaCard.dart';
import '../api/Api.dart';  // Importar ApiService
import '../config.dart';  // Importar el archivo config.dart

class CalendarioScreen extends StatefulWidget {
  @override
  _CalendarioScreenState createState() => _CalendarioScreenState();
}

class _CalendarioScreenState extends State<CalendarioScreen> {
  final ApiService apiService = ApiService();  // Usar la misma instancia

  List<Temporada> temporadas = [];

  @override
  void initState() {
    super.initState();
    _loadTemporadas();
  }

  void _loadTemporadas() async {
    try {
      final response = await apiService.fetchTemporadas();
      setState(() {
        temporadas = response;
      });
    } catch (error) {
      print("Error al cargar los campeonatos: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: temporadas.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: temporadas.length,
        itemBuilder: (context, index) {
          final championship = temporadas[index];
          return TemporadaCard(temporada: championship);
        },
      ),
    );
  }
}
