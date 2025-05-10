// lib/models/ranking.dart
class Ranking {
  final int posicion;
  final String piloto;
  final int puntos;
  final String equipo;

  Ranking({
    required this.posicion,
    required this.piloto,
    required this.puntos,
    required this.equipo,
  });

  factory Ranking.fromJson(Map<String, dynamic> json) {
    return Ranking(
      posicion: json['posicion'],
      piloto: json['piloto'],
      puntos: json['puntos'],
      equipo: json['equipo'],
    );
  }
}
