import 'package:flutter/material.dart';
import '../../models/campeonato.dart';

class CampeonatoCard extends StatelessWidget {
  final Campeonato campeonato;
  /// Nombre del archivo de asset, p.ej. 'wrc.png'
  final String assetImageFile;

  const CampeonatoCard({
    Key? key,
    required this.campeonato,
    required this.assetImageFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ruta completa al asset
    final String assetPath = 'assets/images/campeonatos/$assetImageFile';

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Imagen de asset con bordes redondeados
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                assetPath,
                fit: BoxFit.cover,
                errorBuilder: (ctx, err, stack) => Container(
                  color: Colors.grey[200],
                  child: const Icon(Icons.broken_image, size: 48),
                ),
              ),
            ),
          ),

          // Nombre del campeonato
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              campeonato.nombre,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
