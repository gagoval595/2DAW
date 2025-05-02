import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart'; // Importa el paquete flashy_tab_bar2
import 'package:rallygo/screens/calendario_screen.dart';
import 'package:rallygo/screens/eventos_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');  // ahora Flutter buscará en los assets
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rally Competitions',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(), // Aquí definimos la pantalla inicial
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
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ), // Asegúrate de que HomeScreen está referenciado correctamente
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/logoRallyGoCirculo.png')),
    );
  }
}

class HomeScreen extends StatefulWidget {
  // La clase de la pantalla principal
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pantallas = [
    EventosScreen(), // Página para la primera pestaña
    EventosScreen(), // Página para la segunda pestaña
    CalendarioScreen(), // Página para la tercera pestaña
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Puedes cambiar el color si lo deseas
        elevation: 0, // Sin sombra
        title: Center(
          child: Image.asset(
            'assets/images/logoRallyGoCirculo.png',
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: IndexedStack(index: _selectedIndex, children: _pantallas),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected:
            (index) => setState(() {
              _selectedIndex = index;
            }),
        items: [
          FlashyTabBarItem(icon: Icon(Icons.event), title: Text('Eventos')),
          FlashyTabBarItem(icon: Icon(Icons.search), title: Text('Buscar')),
          FlashyTabBarItem(icon: Icon(Icons.calendar_month), title: Text('Calendario')),
          FlashyTabBarItem(icon: Icon(Icons.portrait_outlined), title: Text('Perfil'),
          ),
        ],
      ),
    );
  }
}
