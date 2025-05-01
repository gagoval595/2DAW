// lib/screens/calendario_screen.dart
import 'package:flutter/material.dart';
import 'package:rallygo/models/championship.dart';
import 'package:rallygo/models/campeonato.dart';
import 'package:rallygo/screens/widget/championshipCard.dart';

class CalendarioScreen extends StatelessWidget {
  final List<Championship> championships = [
    // lib/screens/calendario_screen.dart (partial)
    Championship(
      id: 'wrc',
      name: 'WRC',
      imageAsset: 'assets/images/championships/wrc.jpg', // Note: This is still .jpg for the championship card
      events: [
        Campeonato(id: 1, nombre: 'Rallye Monte-Carlo', fecha: '22/1 - 26/1', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 2, nombre: 'Rally Sweden', fecha: '13/2 - 16/2', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 3, nombre: 'Safari Rally Kenya', fecha: '20/3 - 23/3', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 4, nombre: 'Rally Islas Canarias', fecha: '24/4 - 27/4', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 5, nombre: 'Rally de Portugal', fecha: '15/5 - 18/5', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 6, nombre: 'Rally Italia Sardegna', fecha: '5/6 - 8/6', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 7, nombre: 'Acropolis Rally Greece', fecha: '26/6 - 29/6', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 8, nombre: 'Rally Estonia', fecha: '17/7 - 20/7', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 9, nombre: 'Rally Finland', fecha: '31/7 - 3/8', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 10, nombre: 'Rally del Paraguay', fecha: '28/8 - 31/8', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 11, nombre: 'Rally Chile Bio Bío', fecha: '11/9 - 14/9', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 12, nombre: 'Central European Rally', fecha: '16/10 - 19/10', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 13, nombre: 'Rally Japan', fecha: '6/11 - 9/11', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        Campeonato(id: 14, nombre: 'Rally Saudi Arabia', fecha: '27/11 - 30/11', createdAt: DateTime.now(), updatedAt: DateTime.now()),
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
          fecha: '1/3 - 3/3',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 2,
          nombre: 'Rally Sierra Morena',
          fecha: '5/4 - 7/4',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 3,
          nombre: 'Rallye de Ourense',
          fecha: '7/6 - 9/6',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 4,
          nombre: 'Rallye Rías Baixas',
          fecha: '12/7 - 14/7',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 5,
          nombre: 'Rally Princesa de Asturias',
          fecha: '23/8 - 25/8',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 6,
          nombre: 'Rally Villa de Llanes',
          fecha: '20/9 - 22/9',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 7,
          nombre: 'RallyRACC',
          fecha: '18/10 - 20/10',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Campeonato(
          id: 8,
          nombre: 'Rallye La Nucía',
          fecha: '15/11 - 17/11',
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