class Servicio {
  final int id;
  final int etapaId;
  final String tipo;
  final String? descripcion;
  final String? precio;
  final String? ubicacion;
  final DateTime creadoEn;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Servicio({
    required this.id,
    required this.etapaId,
    required this.tipo,
    this.descripcion,
    this.precio,
    this.ubicacion,
    required this.creadoEn,
    this.createdAt,
    this.updatedAt,
  });

  factory Servicio.fromJson(Map<String, dynamic> json) => Servicio(
    id: json['id'] as int,
    etapaId: json['etapa_id'] as int,
    tipo: json['tipo'] as String,
    descripcion: json['descripcion'] as String?,
    precio: json['precio'] as String?,
    ubicacion: json['ubicacion'] as String?,
    creadoEn: DateTime.parse(json['creado_en'] as String),
    createdAt: json['created_at'] != null
        ? DateTime.parse(json['created_at'] as String)
        : null,
    updatedAt: json['updated_at'] != null
        ? DateTime.parse(json['updated_at'] as String)
        : null,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'etapa_id': etapaId,
    'tipo': tipo,
    'descripcion': descripcion,
    'precio': precio,
    'ubicacion': ubicacion,
    'creado_en': creadoEn.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };
}
