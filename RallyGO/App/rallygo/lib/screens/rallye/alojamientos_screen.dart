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
  final List<LugarAlojamiento> _alojamientos = [];
  bool _isLoading = false;
  bool _hasMoreItems = true;
  final int _pageSize = 20;
  final ScrollController _scrollController = ScrollController();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _loadAlojamientos();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8 &&
        !_isLoading &&
        _hasMoreItems) {
      _loadMoreAlojamientos();
    }
  }

  Future<void> _loadAlojamientos() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final alojamientos = await AlojamientoService().fetchAlojamientos(
        lat: widget.centro.latitude,
        lng: widget.centro.longitude,
        pageSize: _pageSize,
      );

      setState(() {
        _alojamientos.addAll(alojamientos);
        _hasMoreItems = alojamientos.length == _pageSize;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Error al cargar alojamientos: $e');
    }
  }

  Future<void> _loadMoreAlojamientos() async {
    if (_isLoading || !_hasMoreItems) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final alojamientos = await AlojamientoService().fetchNextPage();
      setState(() {
        _alojamientos.addAll(alojamientos);
        _hasMoreItems = alojamientos.length == _pageSize;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Error al cargar más alojamientos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alojamientos'),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (_alojamientos.isEmpty && _isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_alojamientos.isEmpty && !_hasMoreItems) {
      return const Center(child: Text('No se encontraron alojamientos'));
    }

    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(8),
      itemCount: _alojamientos.length + (_hasMoreItems ? 1 : 0),
      itemBuilder: (ctx, i) {
        if (i >= _alojamientos.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        }

        final a = _alojamientos[i];
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
  }
}