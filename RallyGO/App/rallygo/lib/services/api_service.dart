// lib/services/api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/EstadoReserva.dart';
import '../models/campeonato.dart';
import '../models/etapa.dart';
import '../models/servicio.dart';
import '../models/usuario.dart';
import '../models/reserva.dart';

class ApiService {
  static const String _base = 'http://10.0.2.2:8000/api';

  Map<String, String> get _jsonHeaders => {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  // Helper para listas que vengan como Array o como { data: [...] }
  List _extractList(dynamic decoded) {
    if (decoded is List) return decoded;
    if (decoded is Map<String, dynamic> && decoded['data'] is List) {
      return decoded['data'] as List;
    }
    throw Exception('Formato de JSON inesperado: $decoded');
  }

  // ==================== Campeonato ====================

  Future<List<Campeonato>> fetchCampeonatos() async {
    final resp = await http.get(
      Uri.parse('$_base/campeonato'),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar campeonatos: HTTP ${resp.statusCode}\n${resp.body}'
      );
    }

    // 1. Decodificamos el JSON completo
    final decoded = jsonDecode(resp.body) as Map<String, dynamic>;

    // 2. Sacamos la lista de campeonatos del campo "message"
    final List<dynamic> rawList = decoded['message'] as List<dynamic>;

    // 3. La convertimos a List<Campeonato>
    return rawList.map((e) => Campeonato.fromJson(e)).toList();
  }


  Future<Campeonato> fetchCampeonato(int id) async {
    final resp = await http.get(
      Uri.parse('$_base/campeonato/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar campeonato $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
    // Si Laravel envuelve en { "data": {...} }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Campeonato.fromJson(record);
  }

  Future<Campeonato> createCampeonato(Campeonato c) async {
    final resp = await http.post(
      Uri.parse('$_base/campeonato'),
      headers: _jsonHeaders,
      body: jsonEncode(c.toJson()),
    );
    if (resp.statusCode != 201) {
      throw Exception(
          'Error al crear campeonato: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Campeonato.fromJson(record);
  }

  Future<Campeonato> updateCampeonato(Campeonato c) async {
    final resp = await http.put(
      Uri.parse('$_base/campeonato/${c.id}'),
      headers: _jsonHeaders,
      body: jsonEncode(c.toJson()),
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al actualizar campeonato ${c.id}: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Campeonato.fromJson(record);
  }

  Future<void> deleteCampeonato(int id) async {
    final resp = await http.delete(
      Uri.parse('$_base/campeonato/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 204) {
      throw Exception(
          'Error al eliminar campeonato $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
  }

  // ======================= Etapa =======================

  Future<List<Etapa>> fetchEtapas() async {
    final resp = await http.get(
      Uri.parse('$_base/etapa'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar etapas: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final data = _extractList(decoded);
    return data.map((e) => Etapa.fromJson(e)).toList();
  }

  Future<Etapa> fetchEtapa(int id) async {
    final resp = await http.get(
      Uri.parse('$_base/etapa/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar etapa $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Etapa.fromJson(record);
  }

  Future<Etapa> createEtapa(Etapa e) async {
    final resp = await http.post(
      Uri.parse('$_base/etapa'),
      headers: _jsonHeaders,
      body: jsonEncode(e.toJson()),
    );
    if (resp.statusCode != 201) {
      throw Exception(
          'Error al crear etapa: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Etapa.fromJson(record);
  }

  Future<Etapa> updateEtapa(Etapa e) async {
    final resp = await http.put(
      Uri.parse('$_base/etapa/${e.id}'),
      headers: _jsonHeaders,
      body: jsonEncode(e.toJson()),
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al actualizar etapa ${e.id}: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Etapa.fromJson(record);
  }

  Future<void> deleteEtapa(int id) async {
    final resp = await http.delete(
      Uri.parse('$_base/etapa/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 204) {
      throw Exception(
          'Error al eliminar etapa $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
  }

  // ====================== Servicio =====================

  Future<List<Servicio>> fetchServicios() async {
    final resp = await http.get(
      Uri.parse('$_base/servicio'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar servicios: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final data = _extractList(decoded);
    return data.map((e) => Servicio.fromJson(e)).toList();
  }

  Future<Servicio> fetchServicio(int id) async {
    final resp = await http.get(
      Uri.parse('$_base/servicio/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar servicio $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Servicio.fromJson(record);
  }

  Future<Servicio> createServicio(Servicio s) async {
    final resp = await http.post(
      Uri.parse('$_base/servicio'),
      headers: _jsonHeaders,
      body: jsonEncode(s.toJson()),
    );
    if (resp.statusCode != 201) {
      throw Exception(
          'Error al crear servicio: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Servicio.fromJson(record);
  }

  Future<Servicio> updateServicio(Servicio s) async {
    final resp = await http.put(
      Uri.parse('$_base/servicio/${s.id}'),
      headers: _jsonHeaders,
      body: jsonEncode(s.toJson()),
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al actualizar servicio ${s.id}: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Servicio.fromJson(record);
  }

  Future<void> deleteServicio(int id) async {
    final resp = await http.delete(
      Uri.parse('$_base/servicio/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 204) {
      throw Exception(
          'Error al eliminar servicio $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
  }

  // ====================== Usuario ======================

  Future<List<Usuario>> fetchUsuarios() async {
    final resp = await http.get(
      Uri.parse('$_base/usuario'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar usuarios: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final data = _extractList(decoded);
    return data.map((e) => Usuario.fromJson(e)).toList();
  }

  Future<Usuario> fetchUsuario(int id) async {
    final resp = await http.get(
      Uri.parse('$_base/usuario/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar usuario $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Usuario.fromJson(record);
  }

  Future<Usuario> createUsuario(Usuario u) async {
    final resp = await http.post(
      Uri.parse('$_base/usuario'),
      headers: _jsonHeaders,
      body: jsonEncode(u.toJson()),
    );
    if (resp.statusCode != 201) {
      throw Exception(
          'Error al crear usuario: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Usuario.fromJson(record);
  }

  Future<Usuario> updateUsuario(Usuario u) async {
    final resp = await http.put(
      Uri.parse('$_base/usuario/${u.id}'),
      headers: _jsonHeaders,
      body: jsonEncode(u.toJson()),
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al actualizar usuario ${u.id}: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map &&(decoded['data'] != null))
        ? decoded['data']
        : decoded;
    return Usuario.fromJson(record);
  }

  Future<void> deleteUsuario(int id) async {
    final resp = await http.delete(
      Uri.parse('$_base/usuario/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 204) {
      throw Exception(
          'Error al eliminar usuario $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
  }

  // =================== EstadoReserva ===================

  Future<List<EstadoReserva>> fetchEstadosReserva() async {
    final resp = await http.get(
      Uri.parse('$_base/estado_reserva'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar estados de reserva: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final data = _extractList(decoded);
    return data.map((e) => EstadoReserva.fromJson(e)).toList();
  }

  Future<EstadoReserva> fetchEstadoReserva(int id) async {
    final resp = await http.get(
      Uri.parse('$_base/estado_reserva/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar estado de reserva $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return EstadoReserva.fromJson(record);
  }

  Future<EstadoReserva> createEstadoReserva(EstadoReserva er) async {
    final resp = await http.post(
      Uri.parse('$_base/estado_reserva'),
      headers: _jsonHeaders,
      body: jsonEncode(er.toJson()),
    );
    if (resp.statusCode != 201) {
      throw Exception(
          'Error al crear estado de reserva: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return EstadoReserva.fromJson(record);
  }

  Future<EstadoReserva> updateEstadoReserva(EstadoReserva er) async {
    final resp = await http.put(
      Uri.parse('$_base/estado_reserva/${er.id}'),
      headers: _jsonHeaders,
      body: jsonEncode(er.toJson()),
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al actualizar estado de reserva ${er.id}: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return EstadoReserva.fromJson(record);
  }

  Future<void> deleteEstadoReserva(int id) async {
    final resp = await http.delete(
      Uri.parse('$_base/estado_reserva/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 204) {
      throw Exception(
          'Error al eliminar estado de reserva $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
  }

  // ====================== Reserva ======================

  Future<List<Reserva>> fetchReservas() async {
    final resp = await http.get(
      Uri.parse('$_base/reserva'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar reservas: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final data = _extractList(decoded);
    return data.map((e) => Reserva.fromJson(e)).toList();
  }

  Future<Reserva> fetchReserva(int id) async {
    final resp = await http.get(
      Uri.parse('$_base/reserva/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al cargar reserva $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Reserva.fromJson(record);
  }

  Future<Reserva> createReserva(Reserva r) async {
    final resp = await http.post(
      Uri.parse('$_base/reserva'),
      headers: _jsonHeaders,
      body: jsonEncode(r.toJson()),
    );
    if (resp.statusCode != 201) {
      throw Exception(
          'Error al crear reserva: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Reserva.fromJson(record);
  }

  Future<Reserva> updateReserva(Reserva r) async {
    final resp = await http.put(
      Uri.parse('$_base/reserva/${r.id}'),
      headers: _jsonHeaders,
      body: jsonEncode(r.toJson()),
    );
    if (resp.statusCode != 200) {
      throw Exception(
          'Error al actualizar reserva ${r.id}: HTTP ${resp.statusCode}\n${resp.body}');
    }
    final decoded = jsonDecode(resp.body);
    final record = (decoded is Map && decoded['data'] != null)
        ? decoded['data']
        : decoded;
    return Reserva.fromJson(record);
  }

  Future<void> deleteReserva(int id) async {
    final resp = await http.delete(
      Uri.parse('$_base/reserva/$id'),
      headers: _jsonHeaders,
    );
    if (resp.statusCode != 204) {
      throw Exception(
          'Error al eliminar reserva $id: HTTP ${resp.statusCode}\n${resp.body}');
    }
  }
}
