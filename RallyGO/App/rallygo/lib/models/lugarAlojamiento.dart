import 'package:google_maps_flutter/google_maps_flutter.dart';

class LugarAlojamiento {
  final String nombre;
  final String direccion;
  final LatLng ubicacion;
  final String placeId;
  final String url;        // enlace a place_id
  final String? photoUrl;  // URL de la foto (si hay)

  LugarAlojamiento({
    required this.nombre,
    required this.direccion,
    required this.ubicacion,
    required this.placeId,
    required this.url,
    this.photoUrl,
  });

  factory LugarAlojamiento.fromJson(
      Map<String, dynamic> json, String apiKey) {
    final loc = json['geometry']['location'] as Map<String, dynamic>;
    final pid = json['place_id'] as String;
    // Intentamos extraer photo_reference
    String? pr;
    if (json['photos'] != null && (json['photos'] as List).isNotEmpty) {
      pr = (json['photos'][0] as Map<String, dynamic>)['photo_reference']
      as String?;
    }
    final photoUrl = pr != null
        ? 'https://maps.googleapis.com/maps/api/place/photo'
        '?maxwidth=400'
        '&photoreference=$pr'
        '&key=$apiKey'
        : null;

    return LugarAlojamiento(
      nombre: json['name'] as String,
      direccion: (json['vicinity'] ?? json['formatted_address']) as String,
      ubicacion: LatLng(
        (loc['lat'] as num).toDouble(),
        (loc['lng'] as num).toDouble(),
      ),
      placeId: pid,
      url: 'https://www.google.com/maps/search/?api=1&query=$pid',
      photoUrl: photoUrl,
    );
  }
  factory LugarAlojamiento.fromDatabaseJson(Map<String, dynamic> json) {
    return LugarAlojamiento(
      nombre: json['nombre'] as String,
      direccion: json['direccion'] as String,
      ubicacion: LatLng(
        json['lat'] as double,
        json['lng'] as double,
      ),
      placeId: json['place_id'] as String,
      url: json['url'] as String,
      photoUrl: json['photo_url'] as String?,
    );
  }
}
