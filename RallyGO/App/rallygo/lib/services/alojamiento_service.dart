import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import '../models/lugarAlojamiento.dart';

class AlojamientoService {
  final _apiKey = dotenv.env['GOOGLE_MAPS_API_KEY']!;

  Future<List<LugarAlojamiento>> fetchAlojamientos({
    required double lat,
    required double lng,
    int radius = 20000, // 20 km
  }) async {
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
    return results
        .map((e) => LugarAlojamiento.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
