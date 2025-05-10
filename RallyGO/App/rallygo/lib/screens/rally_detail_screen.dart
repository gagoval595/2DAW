import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rallygo/screens/rallye/rankin_screen.dart';
import '../../models/campeonato.dart';
import '../api/Api.dart';
import 'rallye/info_screen.dart';
import 'rallye/map_screen.dart';
import 'rallye/alojamientos_screen.dart';
import 'rallye/noticias_screen.dart';

class RallyDetailScreen extends StatefulWidget {
  final Campeonato campeonato;

  const RallyDetailScreen({Key? key, required this.campeonato}) : super(key: key);

  @override
  _RallyDetailScreenState createState() => _RallyDetailScreenState();
}

class _RallyDetailScreenState extends State<RallyDetailScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final List<Widget> _screens;
  late final ApiService apiService;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    apiService = ApiService(); // Cambiar por tu URL
    _tabController = TabController(length: 5, vsync: this)..addListener(() {
      if (!_tabController.indexIsChanging) return;
      setState(() => _selectedIndex = _tabController.index);
    });

    final centro = LatLng(
      widget.campeonato.lat,
      widget.campeonato.lng,
    );

    _screens = [
      InfoScreen(campeonato: widget.campeonato),
      MapScreen(campeonato: widget.campeonato),
      AlojamientosScreen(centro: centro),
      NoticiasScreen(campeonato: widget.campeonato),
      RankingScreen(campeonato: widget.campeonato),
    ];
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: _selectedIndex == 4 // Si es la pantalla de rankings
      ? _screens[_selectedIndex] // Usar la pantalla directamente sin NestedScrollView
      : NestedScrollView( // Para el resto de pantallas mantener comportamiento actual
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
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
                    color: innerBoxIsScrolled ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: const [Shadow(blurRadius: 4, color: Colors.black26)],
                  ),
                ),
                background: Image.network(
                  widget.campeonato.imageAsset,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: _selectedIndex == 4 ? [] : _screens.where((screen) => screen != _screens[4]).toList(),
          ),
        ),
    bottomNavigationBar: FlashyTabBar(
      selectedIndex: _selectedIndex,
      showElevation: true,
      onItemSelected: (i) {
        setState(() => _selectedIndex = i);
        _tabController.animateTo(i);
      },
      items: [
        FlashyTabBarItem(icon: Icon(Icons.info), title: Text('Info')),
        FlashyTabBarItem(icon: Icon(Icons.map), title: Text('Mapa')),
        FlashyTabBarItem(icon: Icon(Icons.hotel), title: Text('Alojam.')),
        FlashyTabBarItem(icon: Icon(Icons.article), title: Text('Noticias')),
        FlashyTabBarItem(icon: Icon(Icons.leaderboard), title: Text('Ranking')),
      ],
    ),
  );
}}
