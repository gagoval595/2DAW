import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config.dart';
import '../models/campeonato.dart';
import '../models/temporada.dart';

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
  // Obtener todos los campeonatos
  Future<List<Campeonato>> fetchCampeonatos() async {
    final res = await http.get(Uri.parse('$baseUrl/api/campeonatos'));
    print('Respuesta de la API: ${res.body}');  // Imprime la respuesta
    if (res.statusCode == 200) {
      final List<dynamic> data = json.decode(res.body);
      return data.map((item) => Campeonato.fromJson(item)).toList();
    } else {
      print('Error al cargar los campeonatos: ${res.statusCode} - ${res.body}');

      throw Exception('Error al cargar los campeonatos');
    }
  }

  // Obtener un campeonato específico por ID
  Future<Temporada> fetchTemporadaById(String id) async {
    final res = await http.get(Uri.parse('$baseUrl/api/temporadas/$id'));
    if (res.statusCode == 200) {
      return Temporada.fromJson(json.decode(res.body));
    } else {
      throw Exception('Error al cargar el campeonato con ID: $id');
    }
  }

  Future<List<Temporada>> fetchTemporadas() async {
    final res = await http.get(Uri.parse('$baseUrl/api/temporadas'));
    print('Respuesta de la API: ${res.body}');  // Imprime la respuesta
    if (res.statusCode == 200) {
      final List<dynamic> data = json.decode(res.body);
      return data.map((item) => Temporada.fromJson(item)).toList();
    } else {
      throw Exception('Error al cargar los temporadas');
    }
  }


  Future<List<Campeonato>> fetchEventsByTemporadaId(String championshipId) async {

    final res = await http.get(Uri.parse('$baseUrl/api/campeonatos/$championshipId/eventos'));

    if (res.statusCode == 200) {
      final List<dynamic> data = json.decode(res.body);
      return data.map((item) => Campeonato.fromJson(item)).toList();
    } else {
      throw Exception('Error al cargar los eventos del campeonato');
    }
  }

}
