import 'package:google_maps_flutter/google_maps_flutter.dart';

class LugarAlojamiento {
  final String nombre;
  final String direccion;
  final LatLng ubicacion;
  final String placeId;
  final String url;

  LugarAlojamiento({
    required this.nombre,
    required this.direccion,
    required this.ubicacion,
    required this.placeId,
    required this.url,
  });

  factory LugarAlojamiento.fromJson(Map<String, dynamic> json) {
    final geometry = json['geometry']['location'];
    final placeId = json['place_id'] as String;
    return LugarAlojamiento(
        nombre: json['name'] as String,
        direccion: (json['vicinity'] ?? json['formatted_address']) as String,
    ubicacion: LatLng(
    (geometry['lat'] as num).toDouble(),
    (geometry['lng'] as num).toDouble(),
    ),
    placeId: placeId,
    // Construimos la URL pública de Google Maps a partir del place_id:
    url: 'https://www.google.com/maps/place/?q=place_id:$placeId',
    );
  }
}
