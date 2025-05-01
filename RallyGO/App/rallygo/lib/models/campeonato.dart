// lib/models/campeonato.dart
class Campeonato {
  final int id;
  final String nombre;
  final String fecha;
  final DateTime createdAt;
  final DateTime updatedAt;

  Campeonato({
    required this.id,
    required this.nombre,
    required this.fecha,
    required this.createdAt,
    required this.updatedAt,
  });
}