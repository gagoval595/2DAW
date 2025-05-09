// lib/screens/rallye/alojamientos_screen.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../models/lugarAlojamiento.dart';
import '../../services/alojamiento_service.dart';

class AlojamientosScreen extends StatefulWidget {
  final LatLng centro;
  const AlojamientosScreen({Key? key, required this.centro}) : super(key: key);

  @override
  _AlojamientosScreenState createState() => _AlojamientosScreenState();
}

class _AlojamientosScreenState extends State<AlojamientosScreen>
    with AutomaticKeepAliveClientMixin<AlojamientosScreen> {
  late final Future<List<LugarAlojamiento>> _futAlojamientos;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _futAlojamientos = AlojamientoService().fetchAlojamientos(
      lat: widget.centro.latitude,
      lng: widget.centro.longitude,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder<List<LugarAlojamiento>>(
      future: _futAlojamientos,
      builder: (context, snap) {
        if (snap.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snap.hasError) {
          return Center(child: Text('Error: ${snap.error}'));
        }
        final lista = snap.data!;
        if (lista.isEmpty) {
          return const Center(child: Text('No se encontraron alojamientos'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: lista.length,
          itemBuilder: (ctx, i) {
            final a = lista[i];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () async {
                  final uri = Uri.parse(
                    'https://www.google.com/maps/search/?api=1'
                        '&query=${a.ubicacion.latitude},${a.ubicacion.longitude}',
                  );
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('No se pudo abrir Google Maps')),
                    );
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (a.photoUrl != null)
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.network(
                          a.photoUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) =>
                          const Center(child: Icon(Icons.broken_image)),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(a.nombre,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Text(a.direccion,
                              style: const TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },

        );
      },
    );
  }
}
