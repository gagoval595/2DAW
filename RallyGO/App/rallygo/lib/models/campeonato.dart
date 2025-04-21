class Campeonato {
  final int id;
  final String nombre;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Campeonato({
    required this.id,
    required this.nombre,
    this.createdAt,
    this.updatedAt,
  });

  factory Campeonato.fromJson(Map<String, dynamic> json) => Campeonato(
    id: json['id'] as int,
    nombre: json['nombre'] as String,
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
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };
}
