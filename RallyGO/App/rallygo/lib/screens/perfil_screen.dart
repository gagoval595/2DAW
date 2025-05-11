import 'package:flutter/material.dart';

import '../services/autentificacion_service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Verificar si el usuario está logueado
    final bool isLogged =true;

    // Mostrar pantalla según estado de autenticación
    return isLogged ? _buildLoggedInProfile(context) : _buildLoginPrompt(context);
  }

  // Pantalla para usuarios que no han iniciado sesión
  Widget _buildLoginPrompt(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              const Text(
                '¡Bienvenido a RallyGO!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Para acceder a todas las funcionalidades de la aplicación, inicia sesión o regístrate',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Navegación a la pantalla de login
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text('Iniciar Sesión'),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                  // Navegación a la pantalla de registro
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Pantalla para usuarios autenticados (la implementación original)
  Widget _buildLoggedInProfile(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Avatar y nombre de usuario
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF3E0),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: const Image(
                            image: AssetImage('assets/images/default_avatar.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black87,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Usuario RallyGO",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Secciones de opciones
            _buildSection([
              _buildMenuItem(
                icon: Icons.person_outline,
                title: "Información personal",
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.favorite_outline,
                title: "Mis eventos favoritos",
                onTap: () {},
              ),
            ]),

            const SizedBox(height: 16),

            _buildSection([
              _buildMenuItem(
                icon: Icons.language,
                title: "Idioma",
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.lock_outline,
                title: "Política de Privacidad",
                onTap: () {},
              ),
            ]),

            const SizedBox(height: 16),

            _buildSection([
              _buildMenuItem(
                icon: Icons.logout,
                title: "Cerrar sesión",
                textColor: Colors.red,
                onTap: () => _logout(context),
              ),
            ]),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(List<Widget> children) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: children,
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? textColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: textColor ?? Colors.black87,
                  size: 22,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor ?? Colors.black87,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[400],
                  size: 16,
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey[200]),
        ],
      ),
    );
  }

 Future<void> _logout(BuildContext context) async {
   await AuthService().logout();
   Navigator.pushReplacementNamed(context, '/login');
 }
}