import 'temporada.dart';

class Campeonato {
  final String id;
  final String nombre;
  final String fecha;
  final String championshipId;
  final String ubicacion;
  final String superficie;
  final int totalTramos;
  final double distanciaTotal;
  final String historia;
  final String datosCuriosos;
  final String imageAsset;
  final double lat;
  final double lng;
  final Temporada temporada;

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
    required this.lat,
    required this.lng,
    required this.temporada,
  });

  factory Campeonato.fromJson(Map<String, dynamic> json) {
    return Campeonato(
      id: json['id'].toString(),
      nombre: json['nombre'],
      fecha: json['fecha'],
      championshipId: json['championship_id'],
      ubicacion: json['ubicacion'],
      superficie: json['superficie'],
      totalTramos: json['total_tramos'],
      distanciaTotal: double.tryParse(json['distancia_total'].toString()) ?? 0.0,
      historia: json['historia'],
      datosCuriosos: json['datos_curiosos'],
      imageAsset: json['image_asset'],
      lat: double.tryParse(json['lat'].toString()) ?? 0.0,
      lng: double.tryParse(json['lng'].toString()) ?? 0.0,
      // Verifica si 'championship' es nulo o está vacío
      temporada: json['temporada'] != null
          ? Temporada.fromJson(json['temporada'])
          : Temporada(id: "", name: "", imageAsset: ""), // Valor predeterminado vacío
    );
  }
}
