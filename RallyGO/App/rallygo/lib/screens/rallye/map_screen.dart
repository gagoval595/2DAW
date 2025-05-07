// lib/screens/rallye/map_screen.dart
import 'package:flutter/material.dart';
import '../../models/campeonato.dart';

class MapScreen extends StatefulWidget {
  final Campeonato campeonato;
  const MapScreen({Key? key, required this.campeonato}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with AutomaticKeepAliveClientMixin<MapScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Center(
      child: Text('Mapa de tramos (pendiente de implementar)'),
    );
  }
}
