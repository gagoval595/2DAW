// lib/screens/busqueda_screen.dart
import 'package:flutter/material.dart';

class BusquedaScreen extends StatefulWidget {
  @override
  _BusquedaScreenState createState() => _BusquedaScreenState();
}

class _BusquedaScreenState extends State<BusquedaScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  String _searchQuery = '';

  // Datos locales
  final List<String> _busquedasRecientes = [
    'Rally Portugal',
    'Sébastien Ogier',
    'Toyota Gazoo Racing',
    'WRC 2024',
  ];

  final List<Map<String, dynamic>> _pilotos = [
    {
      'nombre': 'Sébastien Ogier',
      'equipo': 'Toyota Gazoo Racing',
      'imagen': 'assets/images/Sébastien Ogier.jpg',
    },
    {
      'nombre': 'Thierry Neuville',
      'equipo': 'Hyundai Motorsport',
      'imagen': 'assets/images/thierry neuville.jpg',
    },
    {
      'nombre': 'Kalle Rovanperä',
      'equipo': 'Toyota Gazoo Racing',
      'imagen': 'assets/images/Kalle Rovanperä.jpg',
    },
  ];

  final List<Map<String, dynamic>> _rallys = [
    {
      'nombre': 'Rally de Portugal',
      'fecha': '9-12 Mayo 2024',
      'imagen': 'assets/images/campeonatos/portugal.jpg',
    },
    {
      'nombre': 'Rally de Montecarlo',
      'fecha': '22-28 Enero 2024',
      'imagen': 'assets/images/campeonatos/montecarlo.jpg',
    },
    {
      'nombre': 'Rally de Finlandia',
      'fecha': '1-4 Agosto 2024',
      'imagen': 'assets/images/campeonatos/finlandia.jpg',
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

  final List<String> _categoriasBusqueda = [
    'WRC 2024',
    'Rally Portugal',
    'Rally Grecia',
    'Pilotos',
    'Equipos',
    'Calendario',
    'Rally España',
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text;
        _isSearching = _searchQuery.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Barra de búsqueda
            _buildSearchBar(),

            // Contenido principal (resultados o sugerencias)
            Expanded(
              child: _isSearching
                ? _buildSearchResults()
                : _buildSearchSuggestions(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Buscar rallys, pilotos, equipos...',
            prefixIcon: Icon(Icons.search),
            suffixIcon: _isSearching
              ? IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                  },
                )
              : null,
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchSuggestions() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: [
        // Búsquedas recientes
        if (_busquedasRecientes.isNotEmpty) ...[
          _buildSectionTitle('Búsquedas recientes'),
          _buildRecentSearches(),
          Divider(height: 32),
        ],

        // Categorías populares
        _buildSectionTitle('Categorías populares'),
        _buildSearchCategories(),
        SizedBox(height: 24),

        // Pilotos destacados
        _buildSectionTitle('Pilotos destacados'),
        _buildPilotosCarousel(),
        SizedBox(height: 24),

        // Rallys populares
        _buildSectionTitle('Rallys populares'),
        _buildRallysGrid(),
      ],
    );
  }

  Widget _buildSearchResults() {
    final query = _searchQuery.toLowerCase();

    // Filtrar resultados
    final pilotosFiltrados = _pilotos.where((p) =>
        p['nombre'].toLowerCase().contains(query) ||
        p['equipo'].toLowerCase().contains(query)).toList();

    final rallysFiltrados = _rallys.where((r) =>
        r['nombre'].toLowerCase().contains(query) ||
        r['fecha'].toLowerCase().contains(query)).toList();

    final equiposFiltrados = _equipos.where((e) =>
        e['nombre'].toLowerCase().contains(query) ||
        e['pilotos'].toLowerCase().contains(query)).toList();

    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        // Mostrar resultados por categoría
        if (pilotosFiltrados.isNotEmpty) ...[
          _buildResultSectionTitle('Pilotos', pilotosFiltrados.length),
          _buildPilotosResults(pilotosFiltrados),
          SizedBox(height: 16),
        ],

        if (rallysFiltrados.isNotEmpty) ...[
          _buildResultSectionTitle('Rallys', rallysFiltrados.length),
          _buildRallysResults(rallysFiltrados),
          SizedBox(height: 16),
        ],

        if (equiposFiltrados.isNotEmpty) ...[
          _buildResultSectionTitle('Equipos', equiposFiltrados.length),
          _buildEquiposResults(equiposFiltrados),
        ],

        if (pilotosFiltrados.isEmpty && rallysFiltrados.isEmpty && equiposFiltrados.isEmpty)
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 40),
                Icon(Icons.search_off, size: 80, color: Colors.grey[400]),
                SizedBox(height: 16),
                Text(
                  'No se encontraron resultados para "$_searchQuery"',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildResultSectionTitle(String category, int count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Text(
            category,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '$count',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue[800],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentSearches() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _busquedasRecientes.map((search) {
        return GestureDetector(
          onTap: () {
            _searchController.text = search;
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.history, size: 16, color: Colors.grey[600]),
                SizedBox(width: 6),
                Text(search),
                SizedBox(width: 4),
                Icon(Icons.north_west, size: 14, color: Colors.grey[600]),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSearchCategories() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _categoriasBusqueda.map((category) {
        return GestureDetector(
          onTap: () {
            _searchController.text = category;
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blue.withOpacity(0.3)),
            ),
            child: Text(
              category,
              style: TextStyle(color: Colors.blue[700]),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildPilotosCarousel() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _pilotos.length,
        itemBuilder: (context, index) {
          final piloto = _pilotos[index];
          return Container(
            width: 140,
            margin: EdgeInsets.only(right: 12),
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
                _searchController.text = piloto['nombre'];
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(piloto['imagen']),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            piloto['nombre'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 2),
                          Text(
                            piloto['equipo'],
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey[600],
                            ),
                            maxLines: 1,
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
        },
      ),
    );
  }

  Widget _buildRallysGrid() {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: _rallys.length,
      itemBuilder: (context, index) {
        final rally = _rallys[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(rally['imagen']),
              fit: BoxFit.cover,
            ),
          ),
          child: InkWell(
            onTap: () {
              _searchController.text = rally['nombre'];
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ),
              ),
              padding: EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rally['nombre'],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    rally['fecha'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPilotosResults(List<Map<String, dynamic>> pilotos) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: pilotos.length,
      itemBuilder: (context, index) {
        final piloto = pilotos[index];
        return Container(
          margin: EdgeInsets.only(bottom: 8),
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
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(piloto['imagen']),
            ),
            title: Text(
              piloto['nombre'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(piloto['equipo']),
            onTap: () {},
          ),
        );
      },
    );
  }

  Widget _buildRallysResults(List<Map<String, dynamic>> rallys) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: rallys.length,
      itemBuilder: (context, index) {
        final rally = rallys[index];
        return Container(
          margin: EdgeInsets.only(bottom: 8),
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
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(rally['imagen']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              rally['nombre'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(rally['fecha']),
            onTap: () {},
          ),
        );
      },
    );
  }

  Widget _buildEquiposResults(List<Map<String, dynamic>> equipos) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: equipos.length,
      itemBuilder: (context, index) {
        final equipo = equipos[index];
        return Container(
          margin: EdgeInsets.only(bottom: 8),
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
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(equipo['imagen']),
            ),
            title: Text(
              equipo['nombre'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Pilotos: ${equipo['pilotos']}'),
            onTap: () {},
          ),
        );
      },
    );
  }
}