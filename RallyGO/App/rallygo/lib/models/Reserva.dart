// lib/models/reserva.dart
class Reserva {
  final int id;
  final int? usuarioId;
  final int? servicioId;
  final int? estadoReservaId;
  final DateTime fecha;

  Reserva({
    required this.id,
    this.usuarioId,
    this.servicioId,
    this.estadoReservaId,
    required this.fecha,
  });

  factory Reserva.fromJson(Map<String, dynamic> json) => Reserva(
    id: json['id'] as int,
    usuarioId: json['usuario_id'] as int?,
    servicioId: json['servicio_id'] as int?,
    estadoReservaId: json['estado_reserva_id'] as int?,
    fecha: DateTime.parse(json['fecha'] as String),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'usuario_id': usuarioId,
    'servicio_id': servicioId,
    'estado_reserva_id': estadoReservaId,
    'fecha': fecha.toIso8601String(),
  };
}
