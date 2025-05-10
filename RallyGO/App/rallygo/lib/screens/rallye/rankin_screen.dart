import 'package:flutter/material.dart';
import '../../api/Api.dart';
import '../../models/campeonato.dart';
import '../../models/ranking.dart';
import '../../models/standings.dart';

class RankingScreen extends StatefulWidget {
  final Campeonato campeonato;

  const RankingScreen({Key? key, required this.campeonato}) : super(key: key);

  @override
  _RankingScreenState createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<RankingScreen> {
  late TabController _tabController;
  final ApiService _apiService = ApiService();
  bool _isLoading = false;
  List<Ranking>? _rallyRanking;
  List<Standing>? _standings;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadData() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final temporadaId = widget.campeonato.championshipId.toString();
      final campeonatoId = widget.campeonato.id.toString();

      final rallyRanking = await _apiService.fetchRallyRanking(
        temporadaId,
        campeonatoId,
      );
      final standings = await _apiService.fetchStandings(
        temporadaId,
        campeonatoId,
      );

      if (mounted) {
        setState(() {
          _rallyRanking = rallyRanking;
          _standings = standings;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = 'Error al cargar los datos: $e';
          _isLoading = false;
        });
      }
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.campeonato.nombre),
        centerTitle: true,
        automaticallyImplyLeading: false, // Quita la flecha de retroceso
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Resultados Rally'),
            Tab(text: 'Clasificación General'),
          ],

        ),
      ),
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : _errorMessage != null
              ? Center(
                child: Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              )
              : TabBarView(
                controller: _tabController,
                children: [_buildRallyRankingTab(), _buildStandingsTab()],
              ),
    );
  }

  Widget _buildRallyRankingTab() {
    if (_rallyRanking == null || _rallyRanking!.isEmpty) {
      return const Center(
        child: Text('No hay resultados disponibles para este rally'),
      );
    }

    return _buildRankingTable(
      columns: const ['Pos.', 'Piloto', 'Equipo', 'Puntos'],
      rows:
          _rallyRanking!
              .map(
                (ranking) => [
                  ranking.posicion.toString(),
                  ranking.piloto,
                  ranking.equipo,
                  ranking.puntos.toString(),
                ],
              )
              .toList(),
    );
  }

  Widget _buildStandingsTab() {
    if (_standings == null || _standings!.isEmpty) {
      return const Center(
        child: Text('No hay clasificación general disponible'),
      );
    }

    final rows = <List<String>>[];
    for (int i = 0; i < _standings!.length; i++) {
      final standing = _standings![i];
      rows.add([
        (i + 1).toString(),
        standing.piloto,
        standing.equipo,
        standing.puntosTotales.toString(),
      ]);
    }

    return _buildRankingTable(
      columns: const ['Pos.', 'Piloto', 'Equipo', 'Puntos'],
      rows: rows,
    );
  }

  Widget _buildRankingTable({
    required List<String> columns,
    required List<List<String>> rows,
  }) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Encabezado
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: Row(
                children:
                    columns
                        .map(
                          (column) => Expanded(
                            child: Text(
                              column,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
            ),

            // Filas
            ...rows.map(
              (row) => Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
                ),
                child: Row(
                  children:
                      row.asMap().entries.map((entry) {
                        final index = entry.key;
                        final value = entry.value;

                        // Estilo para la posición
                        if (index == 0) {
                          return Expanded(
                            child: Text(
                              value,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    int.parse(value) <= 3
                                        ? Colors.orange
                                        : null,
                              ),
                            ),
                          );
                        }

                        // Estilo para los puntos
                        if (index == row.length - 1) {
                          return Expanded(
                            child: Text(
                              value,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }

                        // Estilo por defecto
                        return Expanded(
                          child: Text(value, textAlign: TextAlign.center),
                        );
                      }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
