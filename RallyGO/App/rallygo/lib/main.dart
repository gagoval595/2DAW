import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart'; // Importa el paquete flashy_tab_bar2
import 'models/competicion.dart'; // Asegúrate de importar el archivo de competiciones

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rally Competitions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // Simula el tiempo de carga
  void _loadData() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: AlwaysStoppedAnimation(1.0),
          child: Image.asset('assets/images/logoRallyGoCirculo.png'),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pantallas = [
    CompeticionPage(), // Página para la primera pestaña
    CompeticionPage(), // Página para la segunda pestaña
    CompeticionPage(), // Página para la tercera pestaña
  ];

  final List<Competicion> competiciones = [
    Competicion(
      nombre: 'Rallye Monte-Carlo',
      categoria: 'WRC',
      fecha: '23 – 26 Enero 2025',
      ubicacion: 'Monte-Carlo, Mónaco',
      imagen: 'assets/images/monte_carlo.jpg',
      ranking: '1. Sébastien Ogier\n2. Elfyn Evans\n3. Thierry Neuville',
      proximasFechas: 'Rallye de Suecia: 13 – 16 Feb 2025',
      datosCuriosos: 'Es el rally más antiguo del mundo, celebrado desde 1911.',
    ),
    Competicion(
      nombre: 'Rallye Islas Canarias',
      categoria: 'WRC',
      fecha: '24 – 27 Abril 2025',
      ubicacion: 'Gran Canaria, España',
      imagen: 'assets/images/canarias.jpg',
      ranking: '1. Elfyn Evans\n2. Sébastien Ogier\n3. Thierry Neuville',
      proximasFechas: 'Rallye de Portugal: 15 – 18 May 2025',
      datosCuriosos: 'Es la primera vez que forma parte del calendario del WRC.',
    ),
    Competicion(
      nombre: 'Rallye Sierra Morena',
      categoria: 'S-CER',
      fecha: '4 – 6 Abril 2025',
      ubicacion: 'Córdoba, España',
      imagen: 'assets/images/sierra_morena.jpg',
      ranking: '1. José Antonio Suárez\n2. Javier Pardo\n3. Daniel Alonso',
      proximasFechas: 'Rallye de Hungría: 9 – 11 May 2025',
      datosCuriosos: 'Es una de las pruebas más técnicas del campeonato español.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Puedes cambiar el color si lo deseas
        elevation: 0, // Sin sombra
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min, // Para que el contenido no ocupe todo el ancho
            children: [
              Image.asset(
                'assets/images/logoRallyGoCirculo.png', // Ruta de la imagen
                height: 50, // Puedes ajustar el tamaño de la imagen
                fit: BoxFit.contain, // Mantener la proporción de la imagen
              ),
              SizedBox(width: 8), // Espacio entre la imagen y el texto
            ],
          ),
        ),
      ),
      body: _pantallas[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.event),
            title: Text('Eventos'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Buscar'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.portrait_outlined),
            title: Text('Perfil'),
          ),
        ],
      ),
    );
  }
}

class CompeticionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Contenido de la pantalla de competiciones'),
    );
  }
}
