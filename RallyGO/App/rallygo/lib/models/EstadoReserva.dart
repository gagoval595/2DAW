class EstadoReserva {
  final int id;
  final String nombre;
  final String? descripcion;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  EstadoReserva({
    required this.id,
    required this.nombre,
    this.descripcion,
    this.createdAt,
    this.updatedAt,
  });

  factory EstadoReserva.fromJson(Map<String, dynamic> json) => EstadoReserva(
    id: json['id'] as int,
    nombre: json['nombre'] as String,
    descripcion: json['descripcion'] as String?,
    createdAt: json['created_at'] != null
        ? DateTime.parse(json['created_at'] as String)
        : null,
    updatedAt: json['updated_at'] != null
        ? DateTime.parse(json['updated_at'] as String)
        : null,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'nombre': nombre,
    'descripcion': descripcion,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };
}
