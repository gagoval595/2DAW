import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rallygo/screens/rallye/alojamientos_screen.dart';
import '../models/campeonato.dart';
import 'rallye/info_screen.dart';
import 'rallye/rankin_screen.dart';
import 'rallye/map_screen.dart';

class RallyDetailScreen extends StatefulWidget {
  final Campeonato campeonato;

  const RallyDetailScreen({Key? key, required this.campeonato})
      : super(key: key);

  @override
  _RallyDetailScreenState createState() => _RallyDetailScreenState();
}

class _RallyDetailScreenState extends State<RallyDetailScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final LatLng rallyUbicacion = LatLng(
      widget.campeonato.lat,
      widget.campeonato.lng,
    );

    final List<Widget> allScreens = [
      InfoScreen(campeonato: widget.campeonato),
      MapScreen(campeonato: widget.campeonato),
      RankingScreen(campeonato: widget.campeonato),
      AlojamientosScreen(centro: rallyUbicacion),
    ];

    Widget buildBody() {
      if (_currentIndex == 0) {
        // Solo para InfoScreen, mostramos la foto con SliverAppBar
        return NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                centerTitle: true,
                backgroundColor: innerBoxIsScrolled ? Colors.white : Colors.white,
                expandedHeight: 250,
                pinned: true,
                elevation: 0,
                foregroundColor: innerBoxIsScrolled ? Colors.black : Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  centerTitle: true,
                  titlePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  title: Text(
                    widget.campeonato.nombre,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: innerBoxIsScrolled ? Colors.black : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: const [Shadow(blurRadius: 4, color: Colors.black26)],
                    ),
                  ),
                  background: Image.network(
                    widget.campeonato.imageAsset,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/images/rally_default.jpg',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.share_outlined),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Compartir rally')),
                      );
                    },
                  ),
                ],
              ),
            ];
          },
          body: allScreens[0], // InfoScreen
        );
      } else {
        // Para las demás pantallas, solo mostramos el contenido sin foto
        return allScreens[_currentIndex];
      }
    }

    return Scaffold(
      body: buildBody(),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          FlashyTabBarItem(icon: Icon(Icons.info_outline), title: Text('Info')),
          FlashyTabBarItem(icon: Icon(Icons.map_outlined), title: Text('Mapa')),
          FlashyTabBarItem(
            icon: Icon(Icons.leaderboard_outlined),
            title: Text('Ranking'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.hotel_outlined),
            title: Text('Alojamientos'),
          ),
        ],
      ),
    );
  }
}