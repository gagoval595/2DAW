import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config.dart';
import '../models/campeonato.dart';
import '../models/ranking.dart';
import '../models/standings.dart';
import '../models/temporada.dart';

class ApiCache {
  // Caché para las diferentes consultas
  static Map<String, dynamic> _cacheData = {};
  static Map<String, DateTime> _cacheTimestamp = {};

  // Tiempo de validez del caché (en minutos)
  static const int cacheDuration = 30;

  // Comprobar si existe caché válido para una clave
  static bool isValid(String key) {
    if (!_cacheData.containsKey(key) || !_cacheTimestamp.containsKey(key)) {
      return false;
    }

    final timestamp = _cacheTimestamp[key]!;
    final now = DateTime.now();
    return now.difference(timestamp).inMinutes < cacheDuration;
  }

  // Guardar datos en caché
  static void set(String key, dynamic data) {
    _cacheData[key] = data;
    _cacheTimestamp[key] = DateTime.now();
  }

  // Obtener datos del caché
  static dynamic get(String key) {
    return _cacheData[key];
  }

  // Limpiar un elemento específico del caché
  static void clear(String key) {
    _cacheData.remove(key);
    _cacheTimestamp.remove(key);
  }

  // Limpiar todo el caché
  static void clearAll() {
    _cacheData.clear();
    _cacheTimestamp.clear();
  }
}

class ApiService {
  // Instancia única de ApiService (Singleton)
  static final ApiService _instance = ApiService._internal();

  // Constructor privado para evitar instanciación externa
  ApiService._internal();

  // Factory constructor para acceder a la única instancia
  factory ApiService() {
    return _instance;
  }

  final String baseUrl = Config.baseUrl;

  // Obtener todos los campeonatos (con caché)
  Future<List<Campeonato>> fetchCampeonatos({bool forceRefresh = false}) async {
    const cacheKey = 'campeonatos';

    // Si existe caché válido y no se fuerza actualización, devolver datos del caché
    if (!forceRefresh && ApiCache.isValid(cacheKey)) {
      final List<dynamic> cachedData = ApiCache.get(cacheKey);
      return cachedData.map((item) => Campeonato.fromJson(item)).toList();
    }

    // Si no hay caché o se fuerza actualización, hacer petición a la API
    final res = await http.get(Uri.parse('$baseUrl/api/campeonatos'));
    print('Petición API: $baseUrl/api/campeonatos');

    if (res.statusCode == 200) {
      final List<dynamic> data = json.decode(res.body);

      // Guardar datos en caché
      ApiCache.set(cacheKey, data);

      return data.map((item) => Campeonato.fromJson(item)).toList();
    } else {
      print('Error al cargar los campeonatos: ${res.statusCode} - ${res.body}');
      throw Exception('Error al cargar los campeonatos');
    }
  }

  // Obtener una temporada específica por ID (con caché)
  Future<Temporada> fetchTemporadaById(String id, {bool forceRefresh = false}) async {
    final cacheKey = 'temporada_$id';

    if (!forceRefresh && ApiCache.isValid(cacheKey)) {
      final cachedData = ApiCache.get(cacheKey);
      return Temporada.fromJson(cachedData);
    }

    final res = await http.get(Uri.parse('$baseUrl/api/temporadas/$id'));
    if (res.statusCode == 200) {
      final data = json.decode(res.body);
      ApiCache.set(cacheKey, data);
      return Temporada.fromJson(data);
    } else {
      throw Exception('Error al cargar la temporada con ID: $id');
    }
  }

  // Obtener todas las temporadas (con caché)
  Future<List<Temporada>> fetchTemporadas({bool forceRefresh = false}) async {
    const cacheKey = 'temporadas';

    if (!forceRefresh && ApiCache.isValid(cacheKey)) {
      final List<dynamic> cachedData = ApiCache.get(cacheKey);
      return cachedData.map((item) => Temporada.fromJson(item)).toList();
    }

    final res = await http.get(Uri.parse('$baseUrl/api/temporadas'));
    print('Petición API: $baseUrl/api/temporadas');

    if (res.statusCode == 200) {
      final List<dynamic> data = json.decode(res.body);
      ApiCache.set(cacheKey, data);
      return data.map((item) => Temporada.fromJson(item)).toList();
    } else {
      throw Exception('Error al cargar las temporadas');
    }
  }

  // Obtener campeonatos por ID de temporada (con caché)
  Future<List<Campeonato>> fetchCampeonatosByTemporadaId(String temporadaId, {bool forceRefresh = false}) async {
    final cacheKey = 'campeonatos_temporada_$temporadaId';

    if (!forceRefresh && ApiCache.isValid(cacheKey)) {
      final List<dynamic> cachedData = ApiCache.get(cacheKey);
      return cachedData.map((item) => Campeonato.fromJson(item)).toList();
    }

    final res = await http.get(Uri.parse('$baseUrl/api/temporada/$temporadaId/campeonatos'));
    print('Petición API: $baseUrl/api/temporada/$temporadaId/campeonatos');

    if (res.statusCode == 200) {
      final List<dynamic> data = json.decode(res.body);
      ApiCache.set(cacheKey, data);
      return data.map((item) => Campeonato.fromJson(item)).toList();
    } else {
      print('Error: ${res.statusCode} - ${res.body}');
      throw Exception('Error al cargar los campeonatos de la temporada $temporadaId');
    }
  }
  // Añadir a la clase ApiService

  // Obtener ranking de un rallye específico
  Future<List<Ranking>> fetchRallyRanking(String temporadaId, String campeonatoId, {bool forceRefresh = false}) async {
    final cacheKey = 'rally_ranking_${temporadaId}_${campeonatoId}';

    if (!forceRefresh && ApiCache.isValid(cacheKey)) {
      final List<dynamic> cachedData = ApiCache.get(cacheKey);
      return cachedData.map((item) => Ranking.fromJson(item)).toList();
    }

    final res = await http.get(Uri.parse('$baseUrl/api/temporadas/$temporadaId/rallies/$campeonatoId/ranking'));

    if (res.statusCode == 200) {
      final List<dynamic> data = json.decode(res.body);
      ApiCache.set(cacheKey, data);
      return data.map((item) => Ranking.fromJson(item)).toList();
    } else {
      throw Exception('Error al cargar el ranking del rallye');
    }
  }

  // Obtener clasificación general de la temporada
  Future<List<Standing>> fetchStandings(String temporadaId, String campeonatoId, {bool forceRefresh = false}) async {
    final cacheKey = 'standings_${temporadaId}_${campeonatoId}';

    if (!forceRefresh && ApiCache.isValid(cacheKey)) {
      final List<dynamic> cachedData = ApiCache.get(cacheKey);
      return cachedData.map((item) => Standing.fromJson(item)).toList();
    }

    final res = await http.get(Uri.parse('$baseUrl/api/temporadas/$temporadaId/rallies/$campeonatoId/standings'));

    if (res.statusCode == 200) {
      final List<dynamic> data = json.decode(res.body);
      ApiCache.set(cacheKey, data);
      return data.map((item) => Standing.fromJson(item)).toList();
    } else {
      throw Exception('Error al cargar la clasificación general');
    }
  }

  // Método para invalidar todo el caché (útil después de actualizaciones)
  void invalidateCache() {
    ApiCache.clearAll();
  }
}