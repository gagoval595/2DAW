import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rallygo/models/temporada.dart';
import 'package:rallygo/screens/championship_events_screen.dart';

class TemporadaCard extends StatelessWidget {
  final Temporada temporada;

  const TemporadaCard({Key? key, required this.temporada}) : super(key: key);

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
    const String fallbackAsset = 'assets/images/campeonatos/default_rally.jpg'; // Ensure this exists

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChampionshipEventsScreen(temporada: temporada),
          ),
        );
      },
      child: Container(
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
                      final imageType = _getImageType(temporada.imageAsset);
                      if (imageType == 'svg') {
                        return SvgPicture.asset(
                          temporada.imageAsset,
                          fit: BoxFit.cover,
                          placeholderBuilder: (context) => Container(
                            color: Colors.grey[200],
                            child: const Center(child: CircularProgressIndicator()),
                          ),
                        );
                      } else if (imageType == 'jpg' || imageType == 'png') {
                        return Image.asset(
                          temporada.imageAsset,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            debugPrint('Failed to load asset: ${temporada.imageAsset}, error: $error');
                            return Image.asset(
                              fallbackAsset,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => Container(
                                color: Colors.grey[200],
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.broken_image, size: 48),
                                    Text('Error: ${temporada.imageAsset}'),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        debugPrint('Unsupported image type for: ${temporada.imageAsset}');
                        return Image.asset(
                          fallbackAsset,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Container(
                            color: Colors.grey[200],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.broken_image, size: 48),
                                Text('Unsupported: ${temporada.imageAsset}'),
                              ],
                            ),
                          ),
                        );
                      }
                    } catch (e) {
                      debugPrint('Exception loading asset: ${temporada.imageAsset}, error: $e');
                      return Image.asset(
                        fallbackAsset,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey[200],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.broken_image, size: 48),
                              Text('Error: ${temporada.imageAsset}'),
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
              padding: const EdgeInsets.all(12),
              child: Text(
                temporada.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}