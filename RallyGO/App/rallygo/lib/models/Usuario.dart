// lib/models/usuario.dart
class Usuario {
  final int id;
  final String nombreUsuario;
  final String correo;
  final String contrasena;
  final DateTime creadoEn;

  Usuario({
    required this.id,
    required this.nombreUsuario,
    required this.correo,
    required this.contrasena,
    required this.creadoEn,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
    id: json['id'] as int,
    nombreUsuario: json['nombre_usuario'] as String,
    correo: json['correo'] as String,
    contrasena: json['contrasena'] as String,
    creadoEn: DateTime.parse(json['creado_en'] as String),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'nombre_usuario': nombreUsuario,
    'correo': correo,
    'contrasena': contrasena,
    'creado_en': creadoEn.toIso8601String(),
  };
}
