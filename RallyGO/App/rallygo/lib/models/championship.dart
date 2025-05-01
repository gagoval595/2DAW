// lib/models/championship.dart
import 'package:rallygo/models/campeonato.dart';

class Championship {
  final String id;
  final String name;
  final String imageAsset;
  final List<Campeonato> events;

  Championship({
    required this.id,
    required this.name,
    required this.imageAsset,
    required this.events,
  });
}