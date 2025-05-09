import 'package:flutter/material.dart';
import '../../models/campeonato.dart';

class InfoScreen extends StatefulWidget {
  final Campeonato campeonato;
  const InfoScreen({Key? key, required this.campeonato}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen>
    with AutomaticKeepAliveClientMixin<InfoScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoCard(
            'Fecha del Rally:',
            widget.campeonato.fecha,
          ),
          _buildInfoCard(
            'Ubicación:',
            widget.campeonato.ubicacion,
          ),
          _buildInfoCard(
            'Superficie:',
            widget.campeonato.superficie,
          ),
          _buildInfoCard(
            'Total de Tramos:',
            widget.campeonato.totalTramos.toString(),
          ),
          _buildInfoCard(
            'Distancia Total:',
            '${widget.campeonato.distanciaTotal} km',
          ),
          _buildInfoCard(
            'Historia:',
            widget.campeonato.historia,
          ),
          _buildInfoCard(
            'Datos Curiosos:',
            widget.campeonato.datosCuriosos,
          ),
          const SizedBox(height: 16),
          // Agregar más tarjetas de información aquí según sea necesario
        ],
      ),
    );
  }

  Widget _buildInfoCard(String label, String info) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              info,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
