import 'package:flutter/material.dart';
import 'package:rallygo/screens/widget/campeonatoCard.dart';
import '../models/campeonato.dart';

class EventosScreen extends StatefulWidget {
  @override
  _EventosScreenState createState() => _EventosScreenState();
}

class _EventosScreenState extends State<EventosScreen> {
  final List<Campeonato> campeonatos = [
    Campeonato(
      id: 1,
      nombre: 'Rallye Monte-Carlo',
      fecha: '26/4 - 29/4',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Campeonato(
      id: 3,
      nombre: 'Rallye Argentina',
      fecha: '15/6 - 18/6',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Campeonato(
      id: 4,
      nombre: 'Rallye de Suecia',
      fecha: '20/7 - 23/7',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Campeonato(
      id: 5,
      nombre: 'Rallye de Finlandia',
      fecha: '5/8 - 8/8',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _autoScroll();
  }

  void _autoScroll() {
    Future.delayed(Duration(seconds: 2), () {
      if (_scrollController.hasClients && mounted) {
        _scrollController
            .animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 10),
          curve: Curves.linear,
        )
            .then((_) {
          _scrollController
              .animateTo(
            0,
            duration: Duration(seconds: 10),
            curve: Curves.linear,
          )
              .then((_) {
            if (mounted) _autoScroll();
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título con contenedor redondeado
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[50], // Fondo suave
                borderRadius: BorderRadius.circular(12), // Bordes redondeados
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Próximos Eventos',
                style: TextStyle(
                  fontSize: 26, // Ligeramente más grande
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900], // Color más oscuro
                ),
              ),
            ),
          ),
          // Fila desplazable de tarjetas
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 200,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 8.0),
                itemCount: campeonatos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 200,
                      child: CampeonatoCard(
                        campeonato: campeonatos[index],
                        assetImageFile: {
                          'Rallye Monte-Carlo': 'rallye_monte-carlo.jpg',
                          'Rallye Argentina': 'rallye.argentina.jpg',
                          'Rallye de Suecia': 'rallye_de_suecia.jpg',
                          'Rallye de Finlandia': 'rallye_de_finlandia.jpg',
                        }[campeonatos[index].nombre]!,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Sección adicional debajo de las cards
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 8),
                Text(
                  'En esta sección puedes ver los próximos eventos del campeonato. ¡No te los pierdas!',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}