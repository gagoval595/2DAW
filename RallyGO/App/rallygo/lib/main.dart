import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart'; // Importa el paquete flashy_tab_bar2
import 'package:rallygo/screens/busqueda_screen.dart';
import 'package:rallygo/screens/calendario_screen.dart';
import 'package:rallygo/screens/eventos_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rallygo/screens/login_screen.dart';
import 'package:rallygo/screens/perfil_screen.dart';
import 'package:rallygo/services/autentificacion_service.dart';
import 'package:rallygo/screens/register_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'rallygo/.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RallyGO',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(), // Añade esta línea
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  final AuthService _authService = AuthService();

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    await Future.delayed(Duration(seconds: 2));
    final isLoggedIn = await _authService.isLoggedIn();

    if (mounted) {
      Navigator.of(context).pushReplacementNamed(
        isLoggedIn ? '/home' : '/login',
      );
    }
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
    BusquedaScreen(), // Página para la segunda pestaña
    CalendarioScreen(), // Página para la tercera pestaña
    ProfileScreen(),
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
          FlashyTabBarItem(
            icon: Icon(Icons.calendar_month),
            title: Text('Calendario'),
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
