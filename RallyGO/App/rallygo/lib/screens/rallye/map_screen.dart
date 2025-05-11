import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/campeonato.dart';
import '../../config.dart'; // Asegúrate de tener aquí tu API_KEY

class MapScreen extends StatefulWidget {
  final Campeonato campeonato;

  const MapScreen({Key? key, required this.campeonato}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with AutomaticKeepAliveClientMixin<MapScreen> {
  late GoogleMapController _mapController;
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};
  bool _isLoading = true;
  List<Map<String, dynamic>> _tramos = [];

  // Control de errores y estado
  String? _errorMessage;
  bool _routesLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _loadMapData();
  }

  void _loadMapData() async {
    try {
      // Simulamos la carga de datos de tramos desde API para este ejemplo
      await Future.delayed(Duration(seconds: 1));

      // Datos de ejemplo para los tramos del Rallye de Montecarlo 2025
      _tramos = [
        {
          'nombre': 'Digne-les-Bains / Chaudon-Norante 1',
          'hora': '18:05',
          'inicioLat': 44.0833,
          'inicioLng': 6.2333,
          'finLat': 44.1000,
          'finLng': 6.2500,
          'color': Colors.red,
        },
        {
          'nombre': 'Faucon-du-Caire / Bréziers',
          'hora': '19:53',
          'inicioLat': 44.2000,
          'inicioLng': 6.4000,
          'finLat': 44.2200,
          'finLng': 6.4200,
          'color': Colors.blue,
        },
        {
          'nombre': 'Avançon / Notre-Dame-du-Laus 1',
          'hora': '21:06',
          'inicioLat': 44.2500,
          'inicioLng': 6.5000,
          'finLat': 44.2700,
          'finLng': 6.5200,
          'color': Colors.green,
        },
        {
          'nombre': 'Saint-Maurice / Aubessagne 1',
          'hora': '09:31',
          'inicioLat': 44.3000,
          'inicioLng': 6.6000,
          'finLat': 44.3200,
          'finLng': 6.6200,
          'color': Colors.orange,
        },
        {
          'nombre': 'Saint-Léger-les-Mélèzes / La Bâtie-Neuve 1',
          'hora': '10:34',
          'inicioLat': 44.3500,
          'inicioLng': 6.7000,
          'finLat': 44.3700,
          'finLng': 6.7200,
          'color': Colors.purple,
        },
        {
          'nombre': 'La Bréole / Selonnet 1',
          'hora': '11:42',
          'inicioLat': 44.4000,
          'inicioLng': 6.8000,
          'finLat': 44.4200,
          'finLng': 6.8200,
          'color': Colors.yellow,
        },
        {
          'nombre': 'Saint-Maurice / Aubessagne 2',
          'hora': '15:23',
          'inicioLat': 44.3000,
          'inicioLng': 6.6000,
          'finLat': 44.3200,
          'finLng': 6.6200,
          'color': Colors.red,
        },
        {
          'nombre': 'Saint-Léger-les-Mélèzes / La Bâtie-Neuve 2',
          'hora': '16:26',
          'inicioLat': 44.3500,
          'inicioLng': 6.7000,
          'finLat': 44.3700,
          'finLng': 6.7200,
          'color': Colors.blue,
        },
        {
          'nombre': 'La Bréole / Selonnet 2',
          'hora': '17:34',
          'inicioLat': 44.4000,
          'inicioLng': 6.8000,
          'finLat': 44.4200,
          'finLng': 6.8200,
          'color': Colors.green,
        },
        {
          'nombre': 'La Motte-Chalancon / Saint-Nazaire 1',
          'hora': '08:59',
          'inicioLat': 44.5000,
          'inicioLng': 6.9000,
          'finLat': 44.5200,
          'finLng': 6.9200,
          'color': Colors.orange,
        },
        {
          'nombre': 'Aucelon / Recoubeau-Jansac 1',
          'hora': '10:05',
          'inicioLat': 44.5500,
          'inicioLng': 7.0000,
          'finLat': 44.5700,
          'finLng': 7.0200,
          'color': Colors.purple,
        },
        {
          'nombre': 'La Bâtie-des-Fonts / Aspremont 1',
          'hora': '11:08',
          'inicioLat': 44.6000,
          'inicioLng': 7.1000,
          'finLat': 44.6200,
          'finLng': 7.1200,
          'color': Colors.yellow,
        },
        {
          'nombre': 'La Motte-Chalancon / Saint-Nazaire 2',
          'hora': '14:59',
          'inicioLat': 44.5000,
          'inicioLng': 6.9000,
          'finLat': 44.5200,
          'finLng': 6.9200,
          'color': Colors.red,
        },
        {
          'nombre': 'Aucelon / Recoubeau-Jansac 2',
          'hora': '16:05',
          'inicioLat': 44.5500,
          'inicioLng': 7.0000,
          'finLat': 44.5700,
          'finLng': 7.0200,
          'color': Colors.blue,
        },
        {
          'nombre': 'La Bâtie-des-Fonts / Aspremont 2',
          'hora': '17:08',
          'inicioLat': 44.6000,
          'inicioLng': 7.1000,
          'finLat': 44.6200,
          'finLng': 7.1200,
          'color': Colors.green,
        },
        {
          'nombre': 'Avançon / Notre-Dame-du-Laus 2',
          'hora': '06:39',
          'inicioLat': 44.2500,
          'inicioLng': 6.5000,
          'finLat': 44.2700,
          'finLng': 6.5200,
          'color': Colors.orange,
        },
        {
          'nombre': 'Digne-les-Bains / Chaudon-Norante 2',
          'hora': '08:32',
          'inicioLat': 44.2000,
          'inicioLng': 6.4000,
          'finLat': 44.2200,
          'finLng': 6.4200,
          'color': Colors.purple,
        },
        {
          'nombre': 'La Bollène-Vésubie / Peïra-Cava (Power Stage)',
          'hora': '12:15',
          'inicioLat': 43.9000,
          'inicioLng': 7.3000,
          'finLat': 43.9200,
          'finLng': 7.3200,
          'color': Colors.yellow,
        },
      ];

      setState(() {
        _isLoading = false;
      });

      // Crea los elementos del mapa una vez que tenemos los datos
      _createMapElements();
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = "Error al cargar datos: $e";
      });
    }
  }

  void _createMapElements() async {
    setState(() {
      _routesLoading = true;
    });

    Set<Marker> markers = {};
    Set<Polyline> polylines = {};

    try {
      for (int i = 0; i < _tramos.length; i++) {
        final tramo = _tramos[i];
        final String tramoId = 'tramo_$i';
        final Color tramoColor = tramo['color'] ?? Colors.blue;

        // Marcador para el inicio del tramo
        markers.add(
          Marker(
            markerId: MarkerId('inicio_$i'),
            position: LatLng(tramo['inicioLat'], tramo['inicioLng']),
            infoWindow: InfoWindow(
              title: 'Inicio: ${tramo['nombre']}',
              snippet: 'Hora: ${tramo['hora']}',
            ),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueGreen,
            ),
          ),
        );

        // Marcador para el fin del tramo
        markers.add(
          Marker(
            markerId: MarkerId('fin_$i'),
            position: LatLng(tramo['finLat'], tramo['finLng']),
            infoWindow: InfoWindow(
              title: 'Fin: ${tramo['nombre']}',
              snippet: 'Hora: ${tramo['hora']}',
            ),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueRed,
            ),
          ),
        );

        // Obtener ruta real usando la API de Directions
        await _getRoutePolyline(
          tramoId,
          LatLng(tramo['inicioLat'], tramo['inicioLng']),
          LatLng(tramo['finLat'], tramo['finLng']),
          tramoColor,
          polylines,
        );
      }

      // Actualizar estado con los nuevos marcadores y rutas
      setState(() {
        _markers = markers;
        _polylines = polylines;
        _routesLoading = false;
      });
    } catch (e) {
      setState(() {
        _routesLoading = false;
        _errorMessage = "Error al crear elementos del mapa: $e";
      });
    }
  }

  Future<void> _getRoutePolyline(
    String id,
    LatLng start,
    LatLng end,
    Color color,
    Set<Polyline> polylines,
  ) async {
    try {
      // URL para la solicitud a la API de Directions
      final String apiKey =
          Config.googleMapsApiKey; // Define tu API key en config.dart
      final String url =
          'https://maps.googleapis.com/maps/api/directions/json?'
          'origin=${start.latitude},${start.longitude}'
          '&destination=${end.latitude},${end.longitude}'
          '&mode=driving'
          '&key=$apiKey';

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['status'] == 'OK') {
          // Decodificar la ruta desde la respuesta
          List<LatLng> points = _decodePolyline(
            data['routes'][0]['overview_polyline']['points'],
          );

          // Crear la polyline con los puntos de la ruta real
          polylines.add(
            Polyline(
              polylineId: PolylineId(id),
              color: color,
              points: points,
              width: 5,
              patterns: [PatternItem.dash(20), PatternItem.gap(5)],
            ),
          );
        } else {
          // Fallback: si no se puede obtener la ruta, crear una línea recta
          polylines.add(
            Polyline(
              polylineId: PolylineId('$id-fallback'),
              color: color.withOpacity(0.7),
              points: [start, end],
              width: 3,
            ),
          );
        }
      } else {
        throw Exception('Error en la respuesta: ${response.statusCode}');
      }
    } catch (e) {
      // En caso de error, mostrar una línea recta como fallback
      polylines.add(
        Polyline(
          polylineId: PolylineId('$id-error'),
          color: color.withOpacity(0.5),
          points: [start, end],
          width: 3,
        ),
      );
      print('Error al obtener ruta: $e');
    }
  }

  // Función para decodificar el polyline codificado que devuelve la API
  List<LatLng> _decodePolyline(String encoded) {
    List<LatLng> points = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      points.add(LatLng(lat / 1E5, lng / 1E5));
    }
    return points;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : _errorMessage != null
              ? Center(child: Text(_errorMessage!))
              : Stack(
                children: [
                  // Mapa de Google
                  GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        widget.campeonato.lat,
                        widget.campeonato.lng,
                      ),
                      zoom: 11,
                    ),
                    markers: _markers,
                    polylines: _polylines,
                    onMapCreated: (GoogleMapController controller) {
                      _mapController = controller;
                      _controller.complete(controller);
                    },
                    myLocationEnabled: true,
                    myLocationButtonEnabled: true,
                    zoomControlsEnabled: false,
                  ),

                  // Indicador de carga de rutas
                  if (_routesLoading)
                    Positioned(
                      top: 16,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('Cargando rutas...'),
                            ],
                          ),
                        ),
                      ),
                    ),

                  // Botón para centrar el mapa
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      mini: true,
                      onPressed: () {
                        _mapController.animateCamera(
                          CameraUpdate.newLatLngZoom(
                            LatLng(
                              widget.campeonato.lat,
                              widget.campeonato.lng,
                            ),
                            11,
                          ),
                        );
                      },
                      child: Icon(Icons.center_focus_strong),
                    ),
                  ),

                  // Leyenda de tramos
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Tramos:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6),
                          ..._tramos.asMap().entries.map((entry) {
                            final i = entry.key;
                            final tramo = entry.value;
                            return InkWell(
                              onTap: () {
                                _centrarEnTramo(tramo);
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 4),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 3,
                                      color: tramo['color'] ?? Colors.blue,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'SS${i + 1}',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
    );
  }

  void _centrarEnTramo(Map<String, dynamic> tramo) {
    print("Centrando mapa en el tramo: ${tramo['nombre']}");
    if (tramo.containsKey('polyline') && tramo['polyline'] is List && tramo['polyline'].isNotEmpty) {
      // Obtenemos el primer punto del tramo como punto de inicio
      final puntoInicio = tramo['polyline'][0];

      _mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(puntoInicio.latitude, puntoInicio.longitude),
            zoom: 5, // Nivel de zoom más cercano
          ),
        ),
      );
    }
  }
}
