import 'package:flutter/material.dart';
    import '../../models/campeonato.dart';

    class RankingScreen extends StatefulWidget {
      final Campeonato campeonato;

      const RankingScreen({Key? key, required this.campeonato}) : super(key: key);

      @override
      _RankingScreenState createState() => _RankingScreenState();
    }

    class _RankingScreenState extends State<RankingScreen> with SingleTickerProviderStateMixin {
      late TabController _tabController;
      int _selectedTramoIndex = 0;
      List<Map<String, dynamic>> _tramosResultados = [];

      @override
      void initState() {
        super.initState();
        _tabController = TabController(length: 3, vsync: this);
        _cargarDatosSimulados();
      }

      void _cargarDatosSimulados() {
        _tramosResultados = _generarResultadosTramos();
      }

      @override
      void dispose() {
        _tabController.dispose();
        super.dispose();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Clasificaciones - ${widget.campeonato.nombre}"),
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: "Tramos"),
                Tab(text: "Rally"),
                Tab(text: "General"),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              _buildTramosTab(),
              _buildRallyTab(),
              _buildGeneralTab(),
            ],
          ),
        );
      }

      Widget _buildTramosTab() {
        final tramos = _getTramos();

        return Column(
          children: [
            // Selector de tramo
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Selecciona un tramo:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: DropdownButton<int>(
                      isExpanded: true,
                      underline: Container(),
                      value: _selectedTramoIndex,
                      items: List.generate(tramos.length, (index) {
                        return DropdownMenuItem<int>(
                          value: index,
                          child: Text("SS${index + 1}: ${tramos[index]['nombre']}"),
                        );
                      }),
                      onChanged: (int? value) {
                        if (value != null) {
                          setState(() {
                            _selectedTramoIndex = value;
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Mostrar resultados del tramo seleccionado
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: _tramosResultados[_selectedTramoIndex]['resultados'].length,
                itemBuilder: (context, index) {
                  final resultado = _tramosResultados[_selectedTramoIndex]['resultados'][index];
                  return _buildPilotoResultadoItem(
                    resultado['posicion'],
                    resultado['piloto'],
                    resultado['coche'],
                    resultado['tiempo'],
                    resultado['diferencia'],
                    index == 0, // Destacar al primero
                  );
                },
              ),
            ),
          ],
        );
      }

      Widget _buildRallyTab() {
        final clasificacionRally = _getClasificacionRally();

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: clasificacionRally.length,
          itemBuilder: (context, index) {
            final piloto = clasificacionRally[index];
            return _buildPilotoResultadoItem(
              piloto['posicion'],
              piloto['piloto'],
              piloto['coche'],
              piloto['tiempo'],
              piloto['diferencia'],
              index == 0, // Destacar al primero
            );
          },
        );
      }

      Widget _buildGeneralTab() {
        final clasificacionGeneral = _getClasificacionGeneral();

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: clasificacionGeneral.length,
          itemBuilder: (context, index) {
            final piloto = clasificacionGeneral[index];
            return _buildPilotoPuntosItem(
              piloto['posicion'],
              piloto['piloto'],
              piloto['equipo'],
              piloto['puntos'],
              index == 0, // Destacar al primero
            );
          },
        );
      }

      Widget _buildPilotoResultadoItem(int posicion, String piloto, String coche, String tiempo, String diferencia, bool isFirst) {
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: isFirst ? Colors.amber.withOpacity(0.1) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isFirst ? Colors.amber : Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(
                    posicion.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isFirst ? Colors.white : Colors.blue[700],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        piloto,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        coche,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      tiempo,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      diferencia,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }

      Widget _buildPilotoPuntosItem(int posicion, String piloto, String equipo, int puntos, bool isFirst) {
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: isFirst ? Colors.amber.withOpacity(0.1) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isFirst ? Colors.amber : Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(
                    posicion.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isFirst ? Colors.white : Colors.blue[700],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        piloto,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        equipo,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: isFirst ? Colors.amber : Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "$puntos pts",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isFirst ? Colors.black87 : Colors.blue[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }

      List<Map<String, dynamic>> _getTramos() {
        final nombreRally = widget.campeonato.nombre.toLowerCase();

        if (nombreRally.contains('monte')) {
          return [
            {'nombre': 'Digne-les-Bains / Chaudon-Norante 1', 'longitud': '19.01', 'hora': 'Jueves 18:05'},
            {'nombre': 'Faucon-du-Caire / Bréziers', 'longitud': '21.18', 'hora': 'Jueves 19:53'},
            {'nombre': 'Avançon / Notre-Dame-du-Laus 1', 'longitud': '13.97', 'hora': 'Jueves 21:06'},
            {'nombre': 'Saint-Maurice / Aubessagne 1', 'longitud': '18.68', 'hora': 'Viernes 09:31'},
            {'nombre': 'Saint-Léger-les-Mélèzes / La Bâtie-Neuve 1', 'longitud': '16.68', 'hora': 'Viernes 10:34'},
            {'nombre': 'La Bréole / Selonnet 1', 'longitud': '18.31', 'hora': 'Viernes 11:42'},
            {'nombre': 'Saint-Maurice / Aubessagne 2', 'longitud': '18.68', 'hora': 'Viernes 15:23'},
            {'nombre': 'Saint-Léger-les-Mélèzes / La Bâtie-Neuve 2', 'longitud': '16.68', 'hora': 'Viernes 16:26'},
            {'nombre': 'La Bréole / Selonnet 2', 'longitud': '18.31', 'hora': 'Viernes 17:34'},
            {'nombre': 'La Motte-Chalancon / Saint-Nazaire 1', 'longitud': '27.00', 'hora': 'Sábado 08:59'},
          ];
        }

        return [
          {'nombre': 'Tramo 1', 'longitud': '14.8', 'hora': 'Viernes 10:00'},
          {'nombre': 'Tramo 2', 'longitud': '18.3', 'hora': 'Viernes 12:30'},
          {'nombre': 'Tramo 3', 'longitud': '25.2', 'hora': 'Sábado 08:05'},
          {'nombre': 'Tramo 4', 'longitud': '21.4', 'hora': 'Sábado 10:35'},
          {'nombre': 'Power Stage', 'longitud': '14.8', 'hora': 'Domingo 12:15'},
        ];
      }

      List<Map<String, dynamic>> _generarResultadosTramos() {
        final tramos = _getTramos();
        List<Map<String, dynamic>> resultados = [];

        // Generamos resultados para cada tramo
        for (int i = 0; i < tramos.length; i++) {
          resultados.add({
            'tramoId': i,
            'nombre': tramos[i]['nombre'],
            'resultados': [
              {'posicion': 1, 'piloto': 'Sébastien Ogier', 'coche': 'Toyota GR Yaris Rally1', 'tiempo': '9:43.3', 'diferencia': '-'},
              {'posicion': 2, 'piloto': 'Thierry Neuville', 'coche': 'Hyundai i20 N Rally1', 'tiempo': '9:45.9', 'diferencia': '+2.6'},
              {'posicion': 3, 'piloto': 'Elfyn Evans', 'coche': 'Toyota GR Yaris Rally1', 'tiempo': '9:47.4', 'diferencia': '+4.1'},
              {'posicion': 4, 'piloto': 'Ott Tänak', 'coche': 'Hyundai i20 N Rally1', 'tiempo': '9:49.8', 'diferencia': '+6.5'},
              {'posicion': 5, 'piloto': 'Kalle Rovanperä', 'coche': 'Toyota GR Yaris Rally1', 'tiempo': '9:50.2', 'diferencia': '+6.9'},
              {'posicion': 6, 'piloto': 'Takamoto Katsuta', 'coche': 'Toyota GR Yaris Rally1', 'tiempo': '9:52.6', 'diferencia': '+9.3'},
              {'posicion': 7, 'piloto': 'Esapekka Lappi', 'coche': 'Hyundai i20 N Rally1', 'tiempo': '9:54.0', 'diferencia': '+10.7'},
              {'posicion': 8, 'piloto': 'Dani Sordo', 'coche': 'Hyundai i20 N Rally1', 'tiempo': '9:55.2', 'diferencia': '+11.9'},
              {'posicion': 9, 'piloto': 'Adrien Fourmaux', 'coche': 'Ford Puma Rally1', 'tiempo': '9:56.5', 'diferencia': '+13.2'},
              {'posicion': 10, 'piloto': 'Grégoire Munster', 'coche': 'Ford Puma Rally1', 'tiempo': '9:58.1', 'diferencia': '+14.8'},
            ]
          });
        }

        return resultados;
      }

      List<Map<String, dynamic>> _getClasificacionRally() {
        return [
          {'posicion': 1, 'piloto': 'Thierry Neuville', 'coche': 'Hyundai i20 N Rally1', 'tiempo': '3:35:53.8', 'diferencia': '-'},
          {'posicion': 2, 'piloto': 'Sébastien Ogier', 'coche': 'Toyota GR Yaris Rally1', 'tiempo': '3:36:27.6', 'diferencia': '+33.8'},
          {'posicion': 3, 'piloto': 'Elfyn Evans', 'coche': 'Toyota GR Yaris Rally1', 'tiempo': '3:36:56.2', 'diferencia': '+1:02.4'},
          {'posicion': 4, 'piloto': 'Ott Tänak', 'coche': 'Hyundai i20 N Rally1', 'tiempo': '3:37:22.9', 'diferencia': '+1:29.1'},
          {'posicion': 5, 'piloto': 'Kalle Rovanperä', 'coche': 'Toyota GR Yaris Rally1', 'tiempo': '3:38:05.3', 'diferencia': '+2:11.5'},
          {'posicion': 6, 'piloto': 'Takamoto Katsuta', 'coche': 'Toyota GR Yaris Rally1', 'tiempo': '3:38:37.8', 'diferencia': '+2:44.0'},
          {'posicion': 7, 'piloto': 'Esapekka Lappi', 'coche': 'Hyundai i20 N Rally1', 'tiempo': '3:39:15.4', 'diferencia': '+3:21.6'},
          {'posicion': 8, 'piloto': 'Adrien Fourmaux', 'coche': 'Ford Puma Rally1', 'tiempo': '3:40:02.9', 'diferencia': '+4:09.1'},
          {'posicion': 9, 'piloto': 'Dani Sordo', 'coche': 'Hyundai i20 N Rally1', 'tiempo': '3:41:18.7', 'diferencia': '+5:24.9'},
          {'posicion': 10, 'piloto': 'Grégoire Munster', 'coche': 'Ford Puma Rally1', 'tiempo': '3:42:41.2', 'diferencia': '+6:47.4'},
        ];
      }

      List<Map<String, dynamic>> _getClasificacionGeneral() {
        return [
          {'posicion': 1, 'piloto': 'Thierry Neuville', 'equipo': 'Hyundai Motorsport', 'puntos': 175},
          {'posicion': 2, 'piloto': 'Sébastien Ogier', 'equipo': 'Toyota Gazoo Racing', 'puntos': 154},
          {'posicion': 3, 'piloto': 'Elfyn Evans', 'equipo': 'Toyota Gazoo Racing', 'puntos': 138},
          {'posicion': 4, 'piloto': 'Ott Tänak', 'equipo': 'Hyundai Motorsport', 'puntos': 127},
          {'posicion': 5, 'piloto': 'Kalle Rovanperä', 'equipo': 'Toyota Gazoo Racing', 'puntos': 112},
          {'posicion': 6, 'piloto': 'Takamoto Katsuta', 'equipo': 'Toyota Gazoo Racing', 'puntos': 87},
          {'posicion': 7, 'piloto': 'Adrien Fourmaux', 'equipo': 'M-Sport Ford', 'puntos': 76},
          {'posicion': 8, 'piloto': 'Dani Sordo', 'equipo': 'Hyundai Motorsport', 'puntos': 48},
          {'posicion': 9, 'piloto': 'Esapekka Lappi', 'equipo': 'Hyundai Motorsport', 'puntos': 47},
          {'posicion': 10, 'piloto': 'Grégoire Munster', 'equipo': 'M-Sport Ford', 'puntos': 23},
        ];
      }
    }