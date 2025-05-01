// lib/models/foto.dart
class Foto {
  final int id;
  final int? usuarioId;
  final String? titulo;
  final String? urlImagen;
  final String? categoria;
  final String? etapaNombre;
  final DateTime subidaEn;

  Foto({
    required this.id,
    this.usuarioId,
    this.titulo,
    this.urlImagen,
    this.categoria,
    this.etapaNombre,
    required this.subidaEn,
  });

  factory Foto.fromJson(Map<String, dynamic> json) => Foto(
    id: json['id'] as int,
    usuarioId: json['usuario_id'] as int?,
    titulo: json['titulo'] as String?,
    urlImagen: json['url_imagen'] as String?,
    categoria: json['categoria'] as String?,
    etapaNombre: json['etapa_nombre'] as String?,
    subidaEn: DateTime.parse(json['subida_en'] as String),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'usuario_id': usuarioId,
    'titulo': titulo,
    'url_imagen': urlImagen,
    'categoria': categoria,
    'etapa_nombre': etapaNombre,
    'subida_en': subidaEn.toIso8601String(),
  };
}
