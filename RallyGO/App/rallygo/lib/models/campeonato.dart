import 'package:google_maps_flutter/google_maps_flutter.dart';

class Campeonato {
  final int id;
  final String nombre;
  final String fecha;
  final String championshipId;     // 'wrc' o 's-cer'
  final String ubicacion;          // Detalle de ubicación
  final String superficie;         // Ej. 'Grava', 'Asfalto y nieve'
  final int totalTramos;           // Número total de tramos
  final double distanciaTotal;     // Distancia competitiva en km
  final String historia;           // Resumen histórico
  final String datosCuriosos;      // Hechos interesantes
  final String imageAsset;         // Path al asset de imagen
  final LatLng centro;             // Coordenadas para centrar el mapa
  final DateTime createdAt;
  final DateTime updatedAt;

  Campeonato({
    required this.id,
    required this.nombre,
    required this.fecha,
    required this.championshipId,
    required this.ubicacion,
    required this.superficie,
    required this.totalTramos,
    required this.distanciaTotal,
    required this.historia,
    required this.datosCuriosos,
    required this.imageAsset,
    required this.centro,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Campeonato.fromJson(Map<String, dynamic> json) {
    return Campeonato(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      fecha: json['fecha'] as String,
      championshipId: json['championship_id'] as String,
      ubicacion: json['ubicacion'] as String,
      superficie: json['superficie'] as String,
      totalTramos: json['total_tramos'] as int,
      distanciaTotal: (json['distancia_total'] as num).toDouble(),
      historia: json['historia'] as String,
      datosCuriosos: json['datos_curiosos'] as String,
      imageAsset: json['image_asset'] as String,
      centro: LatLng(
        (json['centro_lat'] as num).toDouble(),
        (json['centro_lng'] as num).toDouble(),
      ),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'nombre': nombre,
    'fecha': fecha,
    'championship_id': championshipId,
    'ubicacion': ubicacion,
    'superficie': superficie,
    'total_tramos': totalTramos,
    'distancia_total': distanciaTotal,
    'historia': historia,
    'datos_curiosos': datosCuriosos,
    'image_asset': imageAsset,
    'centro_lat': centro.latitude,
    'centro_lng': centro.longitude,
    'created_at': createdAt.toIso8601String(),
    'updated_at': updatedAt.toIso8601String(),
  };
}
