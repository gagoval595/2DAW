class Temporada {
  final String id;
  final String name;
  final String imageAsset;

  Temporada({
    required this.id,
    required this.name,
    required this.imageAsset,
  });

  factory Temporada.fromJson(Map<String, dynamic> json) {
    return Temporada(
      id: json['id'] as String,
      name: json['name'],
      imageAsset: json['image_asset'],
    );
  }
}