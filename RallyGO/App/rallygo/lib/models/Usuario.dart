class Usuario {
  final int id;
  final String nombreUsuario;
  final String correo;
  final String contrasena;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Usuario({
    required this.id,
    required this.nombreUsuario,
    required this.correo,
    required this.contrasena,
    this.createdAt,
    this.updatedAt,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
    id: json['id'] as int,
    nombreUsuario: json['nombre_usuario'] as String,
    correo: json['correo'] as String,
    contrasena: json['contrasena'] as String,
    createdAt: json['created_at'] != null
        ? DateTime.parse(json['created_at'] as String)
        : null,
    updatedAt: json['updated_at'] != null
        ? DateTime.parse(json['updated_at'] as String)
        : null,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'nombre_usuario': nombreUsuario,
    'correo': correo,
    'contrasena': contrasena,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };
}
