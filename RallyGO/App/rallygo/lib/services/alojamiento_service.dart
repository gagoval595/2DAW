import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../api/Api.dart';
import '../config.dart';
import '../models/lugarAlojamiento.dart';

/// Servicio para gestionar la búsqueda y paginación de alojamientos cercanos a una ubicación.
///
/// Esta clase se encarga de:
/// - Obtener alojamientos desde la API de Google Places
/// - Gestionar la paginación de resultados
/// - Almacenar los alojamientos en la base de datos
/// - Consultar alojamientos guardados en la base de datos
class AlojamientoService {
  /// Clave de API para Google Maps Platform
  final _apiKey = dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';

  /// Instancia del servicio de API general
  final ApiService apiService = ApiService();

  /// URL base para las peticiones a la API del backend
  static final String _baseUrl = Config.baseUrl;

  /// Token de paginación para la siguiente página de resultados de Google Places
  String? _nextPageToken;

  /// Última latitud utilizada en la búsqueda
  double? _lastLat;

  /// Última longitud utilizada en la búsqueda
  double? _lastLng;

  /// Último radio utilizado en la búsqueda (en metros)
  int? _lastRadius;

  /// Obtiene alojamientos cercanos a una ubicación específica.
  ///
  /// Realiza una petición a la API de Google Places para encontrar alojamientos
  /// cercanos a las coordenadas especificadas dentro del radio indicado.
  ///
  /// @param lat Latitud del centro de búsqueda
  /// @param lng Longitud del centro de búsqueda
  /// @param radius Radio de búsqueda en metros (predeterminado: 20000)
  /// @param pageSize Número máximo de resultados a devolver (predeterminado: 20)
  /// @return Lista de objetos [LugarAlojamiento] encontrados
  /// @throws Exception Si la API key no está definida o si hay un error con la API
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

  /// Obtiene la siguiente página de resultados utilizando el token de paginación.
  ///
  /// Este método utiliza el token de paginación obtenido en la última llamada a
  /// [fetchAlojamientos] para obtener el siguiente conjunto de resultados.
  ///
  /// @return Lista de objetos [LugarAlojamiento] de la siguiente página
  /// @return Lista vacía si no hay más resultados disponibles (no hay token de paginación)
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

  /// Guarda una lista de alojamientos en la base de datos del backend.
  ///
  /// @param alojamientos Lista de [LugarAlojamiento] a guardar
  /// @private Método interno para uso de la clase
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

  /// Consulta alojamientos guardados en la base de datos.
  ///
  /// Permite obtener alojamientos previamente guardados desde la base de datos
  /// del backend, con soporte para paginación y filtrado por ubicación.
  ///
  /// @param lat Latitud del centro de búsqueda
  /// @param lng Longitud del centro de búsqueda
  /// @param radius Radio de búsqueda en metros
  /// @param page Número de página a consultar
  /// @param pageSize Número de elementos por página
  /// @return Lista de objetos [LugarAlojamiento] recuperados de la base de datos
  /// @private Método opcional para consultas a la base de datos
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