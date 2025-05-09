import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:rallygo/api/Api.dart';
import 'package:rallygo/config.dart';
import '../models/lugarAlojamiento.dart';

class AlojamientoService {
  final _apiKey = dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';
  final ApiService apiService = ApiService(); // Reemplaza con la URL de tu API
  static final String _baseUrl = Config.baseUrl;

  Future<List<LugarAlojamiento>> fetchAlojamientos({
    required double lat,
    required double lng,
    int radius = 20000,
  }) async {
    if (_apiKey.isEmpty) {
      throw Exception('GOOGLE_MAPS_API_KEY no está definido');
    }

    // Obtener alojamientos de Google Places
    final uri = Uri.https(
      'maps.googleapis.com',
      '/maps/api/place/nearbysearch/json',
      {
        'key': _apiKey,
        'location': '$lat,$lng',
        'radius': radius.toString(),
        'type': 'lodging',
        'language': 'es',
      },
    );
    final res = await http.get(uri);
    if (res.statusCode != 200) {
      throw Exception('Places API error: ${res.statusCode}');
    }
    final body = json.decode(res.body) as Map<String, dynamic>;
    final results = body['results'] as List<dynamic>;
    final alojamientos = results
        .map((e) => LugarAlojamiento.fromJson(e as Map<String, dynamic>, _apiKey))
        .toList();

    // Guardar alojamientos en la base de datos
    await _saveAlojamientos(alojamientos);

    return alojamientos;
  }

  Future<void> _saveAlojamientos(List<LugarAlojamiento> alojamientos) async {
    for (var alojamiento in alojamientos) {
      final uri = Uri.parse('$_baseUrl/api/alojamientos');
      final response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'nombre': alojamiento.nombre,
          'direccion': alojamiento.direccion,
          'lat': alojamiento.ubicacion.latitude,
          'lng': alojamiento.ubicacion.longitude,
          'place_id': alojamiento.placeId,
          'url': alojamiento.url,
          'photo_url': alojamiento.photoUrl,
        }),
      );

      if (response.statusCode == 201) {
        print('Alojamiento guardado: ${alojamiento.nombre}');
      } else if (response.statusCode == 409) {
        print('Alojamiento ya existe: ${alojamiento.nombre}');
      } else {
        print('Error al guardar alojamiento: ${response.statusCode} - ${response.body}');
      }
    }
  }
}