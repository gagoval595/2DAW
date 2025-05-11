import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../api/Api.dart';
import '../config.dart';
import '../models/lugarAlojamiento.dart';

class AlojamientoService {
  final _apiKey = dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';
  final ApiService apiService = ApiService();
  static final String _baseUrl = Config.baseUrl;
  String? _nextPageToken;
  double? _lastLat;
  double? _lastLng;
  int? _lastRadius;

  Future<List<LugarAlojamiento>> fetchAlojamientos({
    required double lat,
    required double lng,
    int radius = 20000,
    int pageSize = 20,
  }) async {
    if (_apiKey.isEmpty) {
      throw Exception('GOOGLE_MAPS_API_KEY no está definido');
    }

    // Resetear el token si la ubicación o el radio cambian
    if (_lastLat != lat || _lastLng != lng || _lastRadius != radius) {
      _nextPageToken = null;
      _lastLat = lat;
      _lastLng = lng;
      _lastRadius = radius;
    }

    final Map<String, String> params = {
      'key': _apiKey,
      'location': '$lat,$lng',
      'radius': radius.toString(),
      'type': 'lodging',
      'language': 'es',
    };

    if (_nextPageToken != null) {
      params['pagetoken'] = _nextPageToken!;
    }

    final uri =
    Uri.https('maps.googleapis.com', '/maps/api/place/nearbysearch/json', params);
    final res = await http.get(uri);

    if (res.statusCode != 200) {
      throw Exception('Places API error: ${res.statusCode}');
    }

    final body = json.decode(res.body) as Map<String, dynamic>;
    _nextPageToken = body['next_page_token'] as String?;

    final results = body['results'] as List<dynamic>;
    final alojamientos = results
        .map((e) => LugarAlojamiento.fromJson(e as Map<String, dynamic>, _apiKey))
        .toList();

    // Guardar alojamientos en la base de datos
    await _saveAlojamientos(alojamientos);

    // Limitar resultados según pageSize
    return alojamientos.take(pageSize).toList();
  }

  Future<List<LugarAlojamiento>> fetchNextPage() async {
    if (_nextPageToken == null) {
      return [];
    }

    // Esperar un poco para que el token sea válido (Google lo requiere)
    await Future.delayed(const Duration(seconds: 2));

    return fetchAlojamientos(
      lat: _lastLat!,
      lng: _lastLng!,
      radius: _lastRadius!,
    );
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

  // Método opcional para consultar desde la base de datos (puedes usarlo en otros casos)
  Future<List<LugarAlojamiento>> _fetchFromDatabase(
      double lat, double lng, int radius, int page, int pageSize) async {
    try {
      final uri = Uri.parse('$_baseUrl/api/alojamientos');
      final queryParams = {
        'lat': lat.toString(),
        'lng': lng.toString(),
        'radius': radius.toString(),
        'page': page.toString(),
        'pageSize': pageSize.toString(),
      };

      final response = await http.get(
        uri.replace(queryParameters: queryParams),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        final items = data['items'] as List<dynamic>;

        return items
            .map((item) => LugarAlojamiento.fromDatabaseJson(item as Map<String, dynamic>))
            .toList();
      } else {
        print('Error al obtener alojamientos: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error al consultar base de datos: $e');
      return [];
    }
  }
}