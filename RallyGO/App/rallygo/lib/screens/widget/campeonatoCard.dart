// lib/screens/widget/campeonato_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../models/campeonato.dart';

class CampeonatoCard extends StatelessWidget {
  final Campeonato campeonato;
  final String assetImageFile;

  const CampeonatoCard({
    Key? key,
    required this.campeonato,
    required this.assetImageFile,
  }) : super(key: key);

  // Detect image type based on extension
  String _getImageType(String path) {
    final extension = path.toLowerCase();
    if (extension.endsWith('.svg')) return 'svg';
    if (extension.endsWith('.jpg') || extension.endsWith('.jpeg')) return 'jpg';
    if (extension.endsWith('.png')) return 'png';
    return 'unknown';
  }

  @override
  Widget build(BuildContext context) {
    final String assetPath = 'assets/images/campeonatos/$assetImageFile';
    const String fallbackAsset = 'assets/images/campeonatos/default_rally.jpg'; // Ensure this exists

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
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Builder(
                builder: (context) {
                  try {
                    final imageType = _getImageType(assetImageFile);
                    if (imageType == 'svg') {
                      return SvgPicture.asset(
                        assetPath,
                        fit: BoxFit.cover,
                        placeholderBuilder: (context) => Container(
                          color: Colors.grey[200],
                          child: const Center(child: CircularProgressIndicator()),
                        ),
                      );
                    } else if (imageType == 'jpg' || imageType == 'png') {
                      return Image.asset(
                        assetPath,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          debugPrint('Failed to load asset: $assetPath, error: $error');
                          return Image.asset(
                            fallbackAsset,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              color: Colors.grey[200],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.broken_image, size: 48),
                                  Text('Error: $assetImageFile'),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      debugPrint('Unsupported image type for: $assetPath');
                      return Image.asset(
                        fallbackAsset,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey[200],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.broken_image, size: 48),
                              Text('Unsupported: $assetImageFile'),
                            ],
                          ),
                        ),
                      );
                    }
                  } catch (e) {
                    debugPrint('Exception loading asset: $assetPath, error: $e');
                    return Image.asset(
                      fallbackAsset,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[200],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.broken_image, size: 48),
                            Text('Error: $assetImageFile'),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  campeonato.nombre,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  campeonato.fecha,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}