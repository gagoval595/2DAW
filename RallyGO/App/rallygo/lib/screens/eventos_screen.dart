// lib/screens/eventos_screen.dart
  import 'package:flutter/material.dart';
  import '../models/campeonato.dart';

  class EventosScreen extends StatefulWidget {
    @override
    _EventosScreenState createState() => _EventosScreenState();
  }

  class _EventosScreenState extends State<EventosScreen> {
    // Datos locales para evitar consultas a la API
    final List<Map<String, dynamic>> _eventosDestacados = [
      {
        'titulo': 'Rally de Montecarlo 2024',
        'fecha': '22-28 Enero 2024',
        'imagen': 'assets/images/campeonatos/montecarlo.jpg',
        'descripcion': 'La prueba más antigua y prestigiosa del WRC'
      },
      {
        'titulo': 'Rally de Portugal',
        'fecha': '9-12 Mayo 2024',
        'imagen': 'assets/images/campeonatos/portugal.jpg',
        'descripcion': 'Tramos de tierra rápidos en las montañas portuguesas'
      },
      {
        'titulo': 'Rally de Finlandia',
        'fecha': '1-4 Agosto 2024',
        'imagen': 'assets/images/campeonatos/finlandia.jpg',
        'descripcion': 'El rally más rápido del calendario, con sus famosos saltos'
      },
    ];

    final List<Map<String, dynamic>> _noticias = [
      {
        'titulo': 'Sébastien Ogier gana el Rally de Montecarlo por novena vez',
        'fecha': '28 Enero 2024',
        'imagen': 'assets/images/logoRallyGoCirculo.png',
        'resumen': 'El piloto francés consigue una victoria histórica en la apertura del campeonato'
      },
      {
        'titulo': 'Toyota anuncia mejoras para el GR Yaris Rally1',
        'fecha': '15 Febrero 2024',
        'imagen': 'assets/images/logoRallyGoCirculo.png',
        'resumen': 'El equipo japonés introduce actualizaciones en la suspensión y aerodinámica'
      },
      {
        'titulo': 'Neuville lidera el campeonato tras su victoria en Suecia',
        'fecha': '25 Febrero 2024',
        'imagen': 'assets/images/logoRallyGoCirculo.png',
        'resumen': 'El belga consigue su primera victoria en el Rally de Suecia'
      },
    ];

    final List<Map<String, dynamic>> _equipos = [
      {
        'nombre': 'Toyota Gazoo Racing',
        'pilotos': 'Ogier, Evans, Rovanperä',
        'imagen': 'assets/images/toyota.jpg',
      },
      {
        'nombre': 'Hyundai Motorsport',
        'pilotos': 'Neuville, Tänak, Sordo',
        'imagen': 'assets/images/Hyundai.jpg',
      },
      {
        'nombre': 'M-Sport Ford',
        'pilotos': 'Fourmaux, Munster',
        'imagen': 'assets/images/Ford.png',
      },
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            // Simulamos refresco
            await Future.delayed(Duration(seconds: 1));
            setState(() {});
          },
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              // Banner principal
              _buildBanner(),

              SizedBox(height: 24),

              // Eventos destacados
              _buildSectionTitle('Eventos Destacados'),
              SizedBox(height: 12),
              _buildEventosCarousel(),

              SizedBox(height: 32),

              // Últimas noticias
              _buildSectionTitle('Últimas Noticias'),
              SizedBox(height: 12),
              _buildNewsList(),

              SizedBox(height: 32),

              // Equipos
              _buildSectionTitle('Equipos WRC 2024'),
              SizedBox(height: 12),
              _buildTeamsList(),

              SizedBox(height: 32),

              // Próximas carreras
              _buildSectionTitle('Próximas Carreras'),
              SizedBox(height: 12),
              _buildNextRaces(),

              SizedBox(height: 24),
            ],
          ),
        ),
      );
    }

    Widget _buildBanner() {
      return Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage('assets/images/campeonatos/montecarlo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            ),
          ),
          padding: EdgeInsets.all(16),
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WRC 2024',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Sigue toda la temporada del Campeonato Mundial de Rally',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _buildSectionTitle(String title) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {
              // Ver todo
            },
            child: Text('Ver todo'),
          ),
        ],
      );
    }

    Widget _buildEventosCarousel() {
      return Container(
        height: 220,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _eventosDestacados.length,
          itemBuilder: (context, index) {
            final evento = _eventosDestacados[index];
            return Container(
              width: 280,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Imagen del evento
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(evento['imagen']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          evento['titulo'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          evento['fecha'],
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }

    Widget _buildNewsList() {
      return Column(
        children: _noticias.map((noticia) {
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                // Acción al pulsar noticia
              },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    // Imagen
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        noticia['imagen'],
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    // Contenido
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            noticia['titulo'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4),
                          Text(
                            noticia['fecha'],
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            noticia['resumen'],
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      );
    }

    Widget _buildTeamsList() {
      return Container(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _equipos.length,
          itemBuilder: (context, index) {
            final equipo = _equipos[index];
            return Container(
              width: 160,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(equipo['imagen']),
                  ),
                  SizedBox(height: 8),
                  Text(
                    equipo['nombre'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      equipo['pilotos'],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }

    Widget _buildNextRaces() {
      final nextRaces = [
        {'nombre': 'Rally de Portugal', 'fecha': '15-18 Mayo 2025', 'dias': '15'},
        {'nombre': 'Rally de Cerdeña', 'fecha': '5-8 Junio 2025', 'dias': '29'},
        {'nombre': 'Rally de Polonia', 'fecha': '13-15 Junio 2025', 'dias': '67'},
      ];


      return Column(
        children: nextRaces.map((rally) {
          return Container(
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  // Contador días
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          rally['dias']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          'días',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  // Información del rally
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          rally['nombre']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          rally['fecha']!,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Botón
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      minimumSize: Size(0, 0),
                    ),
                    child: Text('Detalles'),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      );
    }
  }