class Standing {
  final String piloto;
  final String equipo;
  final int puntosTotales;

  Standing({
    required this.piloto,
    required this.equipo,
    required this.puntosTotales,
  });

  factory Standing.fromJson(Map<String, dynamic> json) {
    return Standing(
      piloto: json['piloto'],
      equipo: json['equipo'],
      puntosTotales: json['puntos_totales'],
    );
  }
}