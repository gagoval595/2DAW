import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rallygo/services/api_service.dart';
import 'firebase_options.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'models/campeonato.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final api = ApiService();

  // Prueba a cargar campeonatos y mostrarlos por consola:
  try {
    List<Campeonato> lista = (await api.fetchCampeonatos()).cast<Campeonato>();
    for (var c in lista) {
      print('Campeonato: ${c.id} → ${c.nombre}');
    }
  } catch (e) {
    print('Fallo al cargar: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF171B25)),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _screens = <Widget>[
    Center(child: Text('Home Screen', style: TextStyle(color: Colors.white))),
    Center(child: Text('Search Screen', style: TextStyle(color: Colors.white))),
    Center(child: Text('Profile Screen', style: TextStyle(color: Colors.white))),
    Center(child: Text('Settings Screen', style: TextStyle(color: Colors.white))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
        automaticallyImplyLeading: false,
        title: Container(
          width: 50,
          height: 50,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/images/logo (2).png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: GNav(
          gap: 8,
          activeColor: Colors.white,
          color: Colors.black,
          backgroundColor: Colors.white,
          tabBackgroundColor:  Color(0xFF171B25),
          padding: const EdgeInsets.all(12),
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
