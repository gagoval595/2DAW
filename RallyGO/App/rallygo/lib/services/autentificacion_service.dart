// lib/services/auth_service.dart
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/usuario.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();
  List<Usuario> _usuariosRegistrados = [];


  // Usuarios predefinidos
  final Map<String, String> _users = {
    'a': 'a',
    'admin@rallygo.com': 'admin123',
  };

  // Comprobar si el usuario ya ha iniciado sesión
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  // Iniciar sesión
  Future<bool> login(String email, String password) async {
    // Validar credenciales
    if (_users.containsKey(email) && _users[email] == password) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('userEmail', email);
      return true;
    }
    return false;
  }

  // Cerrar sesión
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    await prefs.remove('userEmail');
  }

  // Obtener email del usuario actual
  Future<String?> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('userEmail');
  }
  Future<void> _cargarUsuariosGuardados() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final usuariosString = prefs.getString('usuarios_registrados');

      if (usuariosString != null) {
        final List<dynamic> usuariosJson = jsonDecode(usuariosString);
        _usuariosRegistrados = usuariosJson.map((json) => Usuario.fromJson(json)).toList();

        // Actualizar mapa de usuarios
        for (var usuario in _usuariosRegistrados) {
          _users[usuario.correo] = usuario.contrasena;
        }
      }
    } catch (e) {
      print('Error al cargar usuarios: $e');
    }
  }

  Future<bool> register(String nombre, String email, String password) async {
    // Verificar si el email ya está registrado
    if (_users.containsKey(email)) {
      return false;
    }

    // Determinar el siguiente ID disponible
    int nextId = _usuariosRegistrados.isEmpty
        ? 1
        : _usuariosRegistrados.map((u) => u.id).reduce((a, b) => a > b ? a : b) + 1;

    // Crear nuevo usuario con el modelo correcto
    final nuevoUsuario = Usuario(
      id: nextId,
      nombreUsuario: nombre,
      correo: email,
      contrasena: password,
      creadoEn: DateTime.now(),
    );

    // Agregar a la lista
    _usuariosRegistrados.add(nuevoUsuario);
    // Usar el correo como clave en el mapa de usuarios
    _users[email] = password;

    // Guardar en SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    final usuariosJson = _usuariosRegistrados.map((u) => u.toJson()).toList();
    await prefs.setString('usuarios_registrados', jsonEncode(usuariosJson));

    // Iniciar sesión automáticamente
    await login(email, password);

    return true;
  }
}