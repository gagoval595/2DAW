import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:rallygo/models/campeonato.dart';
import '../models/lugarAlojamiento.dart';
import '../services/alojamiento_service.dart';

class RallyDetailScreen extends StatefulWidget {
  final Campeonato campeonato;

  const RallyDetailScreen({Key? key, required this.campeonato})
      : super(key: key);

  @override
  _RallyDetailScreenState createState() => _RallyDetailScreenState();
}

class _RallyDetailScreenState extends State<RallyDetailScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final Future<List<LugarAlojamiento>> _futAlojamientos;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    // Asegúrate de que tu modelo Campeonato tenga un LatLng centro
    _futAlojamientos = AlojamientoService().fetchAlojamientos(
      lat: widget.campeonato.centro.latitude,
      lng: widget.campeonato.centro.longitude,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.campeonato.nombre),
              background: Image.asset(
                'assets/images/campeonatos/${widget.campeonato.nombre.toLowerCase().replaceAll(' ', '_')}.jpg',
                fit: BoxFit.cover,
              ),
            ),
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Info'),
                Tab(text: 'Mapa'),
                Tab(text: 'Alojamientos'),
                Tab(text: 'Noticias'),
                Tab(text: 'Ranking'),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildInfoTab(),
            _buildMapTab(),
            _buildAlojamientosTab(),
            _buildNewsTab(),
            _buildRankingTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTab() {
    // Aquí tu código de detalles básicos, historia y datos curiosos
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Fecha: ${widget.campeonato.fecha}', style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          Text('Ubicación: ${widget.campeonato.ubicacion}', style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          Text('Superficie: ${widget.campeonato.superficie}', style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildMapTab() {
    // Aquí colocas tu GoogleMap con polilíneas y marcadores
    return Center(child: Text('Aquí irá el mapa con los tramos'));
  }

  Widget _buildAlojamientosTab() {
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
        return ListView.separated(
          padding: const EdgeInsets.all(8),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: lista.length,
          itemBuilder: (ctx, i) {
            final a = lista[i];
            return ListTile(
              leading: const Icon(Icons.hotel),
              title: Text(a.nombre),
              subtitle: Text(a.direccion),
              trailing: IconButton(
                icon: const Icon(Icons.open_in_new),
                onPressed: () async {
                  final uri = Uri.parse(a.url);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('No se pudo abrir URL')),
                    );
                  }
                },
              ),
              onTap: () {
                // Ejemplo: centrar el mapa en a.ubicación
                // _mapController.animateCamera(CameraUpdate.newLatLng(a.ubicación));
              },
            );
          },
        );
      },
    );
  }

  Widget _buildNewsTab() {
    return Center(child: Text('Aquí irán las noticias'));
  }

  Widget _buildRankingTab() {
    return Center(child: Text('Aquí irá el ranking'));
  }
}
