class Etapa {
  final int id;
  final int campeonatoId;
  final String nombre;
  final DateTime? fecha;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Etapa({
    required this.id,
    required this.campeonatoId,
    required this.nombre,
    this.fecha,
    this.createdAt,
    this.updatedAt,
  });

  factory Etapa.fromJson(Map<String, dynamic> json) => Etapa(
    id: json['id'] as int,
    campeonatoId: json['campeonato_id'] as int,
    nombre: json['nombre'] as String,
    fecha: json['fecha'] != null
        ? DateTime.parse(json['fecha'] as String)
        : null,
    createdAt: json['created_at'] != null
        ? DateTime.parse(json['created_at'] as String)
        : null,
    updatedAt: json['updated_at'] != null
        ? DateTime.parse(json['updated_at'] as String)
        : null,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'campeonato_id': campeonatoId,
    'nombre': nombre,
    'fecha': fecha?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };
}
