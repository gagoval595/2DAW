import 'package:flutter/material.dart';
import '../../models/campeonato.dart';

class InfoScreen extends StatefulWidget {
  final Campeonato campeonato;

  const InfoScreen({Key? key, required this.campeonato}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen>
    with AutomaticKeepAliveClientMixin<InfoScreen> {
  @override
  bool get wantKeepAlive => true;
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tarjeta principal con información general
          _buildGeneralInfoCard(),

          const SizedBox(height: 24),

          // Sección de descripción
          _buildSectionTitle('Sobre este Rally'),
          const SizedBox(height: 12),
          _buildDescriptionSection(),

          const SizedBox(height: 24),

          // Sección de tramos destacados
          _buildSectionTitle('Tramos destacados'),
          const SizedBox(height: 12),
          _buildStagesSection(),

          const SizedBox(height: 24),

          // Sección de pilotos a seguir
          _buildSectionTitle('Pilotos a seguir'),
          const SizedBox(height: 12),
          _buildDriversSection(),

          const SizedBox(height: 24),

          // Sección de clima y condiciones
          _buildSectionTitle('Condiciones'),
          const SizedBox(height: 12),
          _buildWeatherSection(),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildGeneralInfoCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'Temporada ${widget.campeonato.championshipId}',
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Icon(
                        _isFavorite ? Icons.star : Icons.star_border,
                        color: Colors.amber[700],
                      ),
                      onPressed: () {
                        setState(() {
                          _isFavorite = !_isFavorite;
                          // Aquí podrías añadir lógica para guardar el estado en preferencias
                          // o enviar al servidor que el usuario ha marcado este rally como favorito
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  widget.campeonato.nombre,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      _getFechasPrueba(),
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.grey),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        widget.campeonato.ubicacion ??
                            'Ubicación no disponible',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _buildStatusChip(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip() {
    // Determinar si el rally es pasado, actual o futuro
    bool esProximo = _esProximo();
    bool esActual = _esActual();

    String texto =
        esProximo ? 'Próximamente' : (esActual ? 'En curso' : 'Finalizado');
    Color color =
        esProximo ? Colors.blue : (esActual ? Colors.green : Colors.grey);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            esProximo
                ? Icons.event_available_outlined
                : (esActual
                    ? Icons.directions_car_filled
                    : Icons.event_available),
            size: 16,
            color: color,
          ),
          const SizedBox(width: 6),
          Text(
            texto,
            style: TextStyle(fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Container(
      padding: const EdgeInsets.all(16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _getDescripcion(),
            style: const TextStyle(fontSize: 15, height: 1.5),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          _buildInfoRow('Superficie', _getSuperficie()),
          const SizedBox(height: 8),
          _buildInfoRow('Distancia total', '${_getDistancia()} km'),
          const SizedBox(height: 8),
          _buildInfoRow('Tramos cronometrados', '${_getNumeroTramos()} tramos'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildStagesSection() {
    final tramos = _getTramos();

    return Column(
      children: List.generate(
        tramos.length,
        (index) => Container(
          margin: const EdgeInsets.only(bottom: 12),
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
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'SS${index + 1}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tramos[index]['nombre'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${tramos[index]['longitud']} km - ${tramos[index]['hora']}',
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
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDriversSection() {
    final pilotos = _getPilotos();

    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pilotos.length,
        itemBuilder: (context, index) {
          final piloto = pilotos[index];
          return Container(
            width: 160,
            margin: const EdgeInsets.only(right: 16),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(piloto['imagen']),
                ),
                const SizedBox(height: 8),
                Text(
                  piloto['nombre'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 2),
                Text(
                  piloto['equipo'],
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildWeatherSection() {
    final condiciones = _getCondiciones();

    return Container(
      padding: const EdgeInsets.all(16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildWeatherItem(
                condiciones['icono'],
                '${condiciones['temperatura']}°C',
                condiciones['clima'],
              ),
              _buildWeatherItem(
                Icons.water_drop,
                '${condiciones['humedad']}%',
                'Humedad',
              ),
              _buildWeatherItem(
                Icons.air,
                '${condiciones['viento']} km/h',
                'Viento',
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Text(
            'Previsión para los días del rally:',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            condiciones['prevision'],
            style: const TextStyle(fontSize: 14, height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherItem(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }

  // Métodos auxiliares para obtener datos
  String _getFechasPrueba() {
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    if (nombreRally.contains('monte')) return '22-28 Enero 2024';
    if (nombreRally.contains('suecia')) return '15-18 Febrero 2024';
    if (nombreRally.contains('croacia')) return '18-21 Abril 2024';
    if (nombreRally.contains('portugal')) return '9-12 Mayo 2024';
    if (nombreRally.contains('cerdeña')) return '30 Mayo - 2 Junio 2024';
    if (nombreRally.contains('polonia')) return '27-30 Junio 2024';
    if (nombreRally.contains('letonia')) return '18-21 Julio 2024';
    if (nombreRally.contains('finlandia')) return '1-4 Agosto 2024';
    if (nombreRally.contains('grecia')) return '5-8 Septiembre 2024';
    if (nombreRally.contains('chile')) return '26-29 Septiembre 2024';
    if (nombreRally.contains('europa central')) return '17-20 Octubre 2024';
    if (nombreRally.contains('japón')) return '21-24 Noviembre 2024';

    return 'Fechas por confirmar';
  }

  String _getDescripcion() {
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    if (nombreRally.contains('monte'))
      return 'El Rally de Montecarlo, la prueba más antigua del campeonato, celebra su 92ª edición en 2024. Los pilotos se enfrentarán a los desafiantes tramos de asfalto de los Alpes Marítimos franceses, con condiciones cambiantes que pueden incluir hielo y nieve, lo que hace que la elección de neumáticos sea crucial.';

    if (nombreRally.contains('portugal'))
      return 'El Rally de Portugal es uno de los clásicos del WRC, con tramos de tierra técnicos y rápidos que atraen a miles de aficionados cada año. La edición 2024 incluye el famoso salto de Fafe, uno de los puntos más emblemáticos del campeonato donde los coches pueden volar hasta 30 metros.';

    return 'Este rally es parte del Campeonato Mundial de Rally (WRC) ${widget.campeonato.championshipId}. Los pilotos se enfrentarán a desafiantes tramos en condiciones variadas, poniendo a prueba su habilidad y la fiabilidad de sus vehículos en una de las pruebas más exigentes del calendario.';
  }

  String _getSuperficie() {
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    if (nombreRally.contains('monte')) return 'Asfalto, hielo y nieve';
    if (nombreRally.contains('suecia')) return 'Nieve y hielo';
    if (nombreRally.contains('croacia')) return 'Asfalto';
    if (nombreRally.contains('portugal')) return 'Tierra';
    if (nombreRally.contains('cerdeña')) return 'Tierra';
    if (nombreRally.contains('polonia')) return 'Tierra';
    if (nombreRally.contains('letonia')) return 'Tierra';
    if (nombreRally.contains('finlandia')) return 'Tierra';
    if (nombreRally.contains('grecia')) return 'Tierra rocosa';
    if (nombreRally.contains('chile')) return 'Tierra';
    if (nombreRally.contains('europa central')) return 'Asfalto';
    if (nombreRally.contains('japón')) return 'Asfalto';

    return 'Mixta';
  }

  int _getDistancia() {
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    if (nombreRally.contains('monte')) return 324;
    if (nombreRally.contains('suecia')) return 301;
    if (nombreRally.contains('croacia')) return 283;
    if (nombreRally.contains('portugal')) return 337;
    if (nombreRally.contains('cerdeña')) return 315;
    if (nombreRally.contains('polonia')) return 307;
    if (nombreRally.contains('letonia')) return 298;
    if (nombreRally.contains('finlandia')) return 305;
    if (nombreRally.contains('grecia')) return 307;
    if (nombreRally.contains('chile')) return 321;
    if (nombreRally.contains('europa central')) return 308;
    if (nombreRally.contains('japón')) return 304;

    return 300;
  }

  int _getNumeroTramos() {
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    if (nombreRally.contains('monte')) return 17;
    if (nombreRally.contains('suecia')) return 18;
    if (nombreRally.contains('croacia')) return 20;
    if (nombreRally.contains('portugal')) return 21;
    if (nombreRally.contains('cerdeña')) return 16;
    if (nombreRally.contains('polonia')) return 19;
    if (nombreRally.contains('letonia')) return 18;
    if (nombreRally.contains('finlandia')) return 23;
    if (nombreRally.contains('grecia')) return 15;
    if (nombreRally.contains('chile')) return 16;
    if (nombreRally.contains('europa central')) return 19;
    if (nombreRally.contains('japón')) return 22;

    return 18;
  }

  List<Map<String, dynamic>> _getTramos() {
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    if (nombreRally.contains('monte')) {
      return [
        {
          'nombre': 'Shakedown Route de la Garde',
          'longitud': '3.28',
          'hora': 'Miércoles 16:01',
        },
        {
          'nombre': 'Digne-les-Bains / Chaudon-Norante 1',
          'longitud': '19.01',
          'hora': 'Jueves 18:05',
        },
        {
          'nombre': 'Faucon-du-Caire / Bréziers',
          'longitud': '21.18',
          'hora': 'Jueves 19:53',
        },
        {
          'nombre': 'Avançon / Notre-Dame-du-Laus 1',
          'longitud': '13.97',
          'hora': 'Jueves 21:06',
        },
        {
          'nombre': 'Saint-Maurice / Aubessagne 1',
          'longitud': '18.68',
          'hora': 'Viernes 09:31',
        },
        {
          'nombre': 'Saint-Léger-les-Mélèzes / La Bâtie-Neuve 1',
          'longitud': '16.68',
          'hora': 'Viernes 10:34',
        },
        {
          'nombre': 'La Bréole / Selonnet 1',
          'longitud': '18.31',
          'hora': 'Viernes 11:42',
        },
        {
          'nombre': 'Saint-Maurice / Aubessagne 2',
          'longitud': '18.68',
          'hora': 'Viernes 15:23',
        },
        {
          'nombre': 'Saint-Léger-les-Mélèzes / La Bâtie-Neuve 2',
          'longitud': '16.68',
          'hora': 'Viernes 16:26',
        },
        {
          'nombre': 'La Bréole / Selonnet 2',
          'longitud': '18.31',
          'hora': 'Viernes 17:34',
        },
        {
          'nombre': 'La Motte-Chalancon / Saint-Nazaire 1',
          'longitud': '27.00',
          'hora': 'Sábado 08:59',
        },
        {
          'nombre': 'Aucelon / Recoubeau-Jansac 1',
          'longitud': '20.85',
          'hora': 'Sábado 10:05',
        },
        {
          'nombre': 'La Bâtie-des-Fonts / Aspremont 1',
          'longitud': '17.85',
          'hora': 'Sábado 11:08',
        },
        {
          'nombre': 'La Motte-Chalancon / Saint-Nazaire 2',
          'longitud': '27.00',
          'hora': 'Sábado 14:59',
        },
        {
          'nombre': 'Aucelon / Recoubeau-Jansac 2',
          'longitud': '20.85',
          'hora': 'Sábado 16:05',
        },
        {
          'nombre': 'La Bâtie-des-Fonts / Aspremont 2',
          'longitud': '17.85',
          'hora': 'Sábado 17:08',
        },
        {
          'nombre': 'Avançon / Notre-Dame-du-Laus 2',
          'longitud': '13.97',
          'hora': 'Domingo 06:39',
        },
        {
          'nombre': 'Digne-les-Bains / Chaudon-Norante 2',
          'longitud': '19.01',
          'hora': 'Domingo 08:32',
        },
        {
          'nombre': 'La Bollène-Vésubie / Peïra-Cava (Power Stage)',
          'longitud': '17.92',
          'hora': 'Domingo 12:15',
        },
      ];
    }

    if (nombreRally.contains('portugal')) {
      return [
        {
          'nombre': 'Figueira da Foz',
          'longitud': '2.94',
          'hora': 'Jueves 19:05',
        },
        {'nombre': 'Mortágua 1', 'longitud': '14.59', 'hora': 'Viernes 07:35'},
        {'nombre': 'Lousã 1', 'longitud': '12.28', 'hora': 'Viernes 09:05'},
        {'nombre': 'Góis 1', 'longitud': '14.30', 'hora': 'Viernes 09:53'},
        {'nombre': 'Arganil 1', 'longitud': '14.41', 'hora': 'Viernes 10:41'},
        {'nombre': 'Lousã 2', 'longitud': '12.28', 'hora': 'Viernes 09:05'},
        {'nombre': 'Góis 2', 'longitud': '14.30', 'hora': 'Viernes 09:53'},
        {'nombre': 'Arganil 2', 'longitud': '14.41', 'hora': 'Viernes 10:41'},
        {'nombre': 'Mortágua 2', 'longitud': '14.59', 'hora': 'Viernes 17:05'},
        {
          'nombre': 'Águeda / Sever',
          'longitud': '15.08',
          'hora': 'Viernes 18:35',
        },
        {
          'nombre': 'Sever / Albergaria',
          'longitud': '20.24',
          'hora': 'Viernes 19:20',
        },
        {
          'nombre': 'Vieira do Minho 1',
          'longitud': '17.69',
          'hora': 'Viernes 07:35',
        },
        {
          'nombre': 'Cabeceiras de Basto 1',
          'longitud': '19.91',
          'hora': 'Viernes 08:35',
        },
        {'nombre': 'Amarante 1', 'longitud': '22.10', 'hora': 'Viernes 10:25'},
        {
          'nombre': 'Vieira do Minho 2',
          'longitud': '17.69',
          'hora': 'Viernes 15:05',
        },
        {
          'nombre': 'Cabeceiras de Basto 2',
          'longitud': '19.91',
          'hora': 'Viernes 16:05',
        },
        {'nombre': 'Amarante 2', 'longitud': '22.10', 'hora': 'Viernes 17:55'},
        {'nombre': 'Lousada', 'longitud': '3.52', 'hora': 'Viernes 19:05'},
        {'nombre': 'Paredes 1', 'longitud': '16.09', 'hora': 'Sábado 06:43'},
        {'nombre': 'Felgueiras 1', 'longitud': '8.81', 'hora': 'Sábado 07:48'},
        {'nombre': 'Fafe 1', 'longitud': '11.18', 'hora': 'Sábado 08:35'},
        {'nombre': 'Paredes 2', 'longitud': '16.09', 'hora': 'Sábado 09:58'},
        {'nombre': 'Felgueiras 2', 'longitud': '8.81', 'hora': 'Sábado 11:03'},
        {'nombre': 'Fafe 2', 'longitud': '11.18', 'hora': 'Sábado 13:15'},
      ];
    }
    if (nombreRally.contains('suecia')) {
      return [
        {'nombre': 'Hagfors', 'longitud': '6.1', 'hora': 'Viernes 08:30'},
        {'nombre': 'Rämmen', 'longitud': '13.2', 'hora': 'Viernes 10:00'},
        {'nombre': 'Likenäs', 'longitud': '14.7', 'hora': 'Viernes 11:30'},
        {'nombre': 'Torsby', 'longitud': '25.9', 'hora': 'Viernes 14:00'},
        {'nombre': 'Likenäs 2', 'longitud': '14.7', 'hora': 'Viernes 16:00'},
        {'nombre': 'Rämmen 2', 'longitud': '13.2', 'hora': 'Viernes 17:30'},
        {'nombre': 'Hagfors 2', 'longitud': '6.1', 'hora': 'Viernes 18:30'},
        {'nombre': 'Power Stage', 'longitud': '10.5', 'hora': 'Sábado 12:15'},
      ];
    }
    if (nombreRally.contains('kenia')) {
      return [
        {'nombre': 'Soysambu', 'longitud': '25.5', 'hora': 'Viernes 07:30'},
        {'nombre': 'Kyamwilu', 'longitud': '22.3', 'hora': 'Viernes 09:00'},
        {'nombre': 'Samburu', 'longitud': '35.4', 'hora': 'Viernes 11:30'},
        {'nombre': 'Loldia', 'longitud': '18.7', 'hora': 'Viernes 14:00'},
        {'nombre': 'Kyamwilu 2', 'longitud': '22.3', 'hora': 'Sábado 09:00'},
        {'nombre': 'Soysambu 2', 'longitud': '25.5', 'hora': 'Sábado 11:00'},
        {'nombre': 'Samburu 2', 'longitud': '35.4', 'hora': 'Sábado 13:00'},
        {'nombre': 'Loldia 2', 'longitud': '18.7', 'hora': 'Sábado 14:30'},
        {'nombre': 'Power Stage', 'longitud': '18.1', 'hora': 'Domingo 12:15'},
      ];
    }
    if (nombreRally.contains('kenia')) {
      return [
        {'nombre': 'Soysambu', 'longitud': '25.5', 'hora': 'Viernes 07:30'},
        {'nombre': 'Kyamwilu', 'longitud': '22.3', 'hora': 'Viernes 09:00'},
        {'nombre': 'Samburu', 'longitud': '35.4', 'hora': 'Viernes 11:30'},
        {'nombre': 'Loldia', 'longitud': '18.7', 'hora': 'Viernes 14:00'},
        {'nombre': 'Kyamwilu 2', 'longitud': '22.3', 'hora': 'Sábado 09:00'},
        {'nombre': 'Soysambu 2', 'longitud': '25.5', 'hora': 'Sábado 11:00'},
        {'nombre': 'Samburu 2', 'longitud': '35.4', 'hora': 'Sábado 13:00'},
        {'nombre': 'Loldia 2', 'longitud': '18.7', 'hora': 'Sábado 14:30'},
        {'nombre': 'Power Stage', 'longitud': '18.1', 'hora': 'Domingo 12:15'},
      ];
    }
    if (nombreRally.contains('canarias')) {
      return [
        {'nombre': 'Valsequillo', 'longitud': '12.5', 'hora': 'Jueves 17:00'},
        {'nombre': 'Moya', 'longitud': '14.3', 'hora': 'Jueves 18:00'},
        {'nombre': 'Arucas', 'longitud': '10.7', 'hora': 'Viernes 08:00'},
        {'nombre': 'La Aldea', 'longitud': '20.2', 'hora': 'Viernes 10:30'},
        {'nombre': 'Tejeda', 'longitud': '15.9', 'hora': 'Viernes 12:15'},
        {'nombre': 'San Mateo', 'longitud': '18.4', 'hora': 'Viernes 14:00'},
        {'nombre': 'Power Stage', 'longitud': '14.0', 'hora': 'Sábado 12:15'},
      ];
    }
    if (nombreRally.contains('sardegna')) {
      return [
        {'nombre': 'Monte Lerno', 'longitud': '23.1', 'hora': 'Viernes 07:30'},
        {'nombre': 'Tula', 'longitud': '18.5', 'hora': 'Viernes 09:00'},
        {'nombre': 'Castelsardo', 'longitud': '16.3', 'hora': 'Viernes 10:30'},
        {'nombre': 'Gallura', 'longitud': '19.8', 'hora': 'Viernes 13:00'},
        {
          'nombre': 'Monte Lerno 2',
          'longitud': '23.1',
          'hora': 'Viernes 15:00',
        },
        {'nombre': 'Tula 2', 'longitud': '18.5', 'hora': 'Viernes 16:30'},
        {'nombre': 'Castelsardo 2', 'longitud': '16.3', 'hora': 'Sábado 08:00'},
        {'nombre': 'Gallura 2', 'longitud': '19.8', 'hora': 'Sábado 10:00'},
        {'nombre': 'Power Stage', 'longitud': '14.5', 'hora': 'Domingo 12:15'},
      ];
    }
    if (nombreRally.contains('acropolis')) {
      return [
        {'nombre': 'Pineios', 'longitud': '24.3', 'hora': 'Viernes 08:00'},
        {'nombre': 'Tarzan', 'longitud': '16.2', 'hora': 'Viernes 09:30'},
        {'nombre': 'Elefsina', 'longitud': '19.5', 'hora': 'Viernes 11:00'},
        {'nombre': 'Kifisia', 'longitud': '22.7', 'hora': 'Viernes 13:30'},
        {'nombre': 'Pineios 2', 'longitud': '24.3', 'hora': 'Sábado 09:00'},
        {'nombre': 'Tarzan 2', 'longitud': '16.2', 'hora': 'Sábado 10:30'},
        {'nombre': 'Elefsina 2', 'longitud': '19.5', 'hora': 'Sábado 12:00'},
        {'nombre': 'Kifisia 2', 'longitud': '22.7', 'hora': 'Sábado 13:30'},
        {'nombre': 'Power Stage', 'longitud': '20.1', 'hora': 'Domingo 12:15'},
      ];
    }
    if (nombreRally.contains('estonia')) {
      return [
        {'nombre': 'Ockelbo', 'longitud': '20.3', 'hora': 'Viernes 07:30'},
        {'nombre': 'Torsby', 'longitud': '28.1', 'hora': 'Viernes 09:00'},
        {'nombre': 'Likenäs', 'longitud': '22.4', 'hora': 'Viernes 10:30'},
        {'nombre': 'Rämmen', 'longitud': '18.9', 'hora': 'Viernes 12:00'},
        {'nombre': 'Torsby 2', 'longitud': '28.1', 'hora': 'Sábado 08:00'},
        {'nombre': 'Likenäs 2', 'longitud': '22.4', 'hora': 'Sábado 09:30'},
        {'nombre': 'Rämmen 2', 'longitud': '18.9', 'hora': 'Sábado 11:00'},
        {'nombre': 'Ockelbo 2', 'longitud': '20.3', 'hora': 'Sábado 13:00'},
        {'nombre': 'Power Stage', 'longitud': '15.0', 'hora': 'Domingo 12:15'},
      ];
    }
    if (nombreRally.contains('finlandia')) {
      return [
        {'nombre': 'Laukaa', 'longitud': '26.2', 'hora': 'Viernes 08:30'},
        {'nombre': 'Jyvaskyla', 'longitud': '19.4', 'hora': 'Viernes 10:00'},
        {'nombre': 'Jyvaskyla 2', 'longitud': '19.4', 'hora': 'Viernes 11:30'},
        {'nombre': 'Laukaa 2', 'longitud': '26.2', 'hora': 'Viernes 13:00'},
        {'nombre': 'Jyvaskyla 3', 'longitud': '19.4', 'hora': 'Sábado 08:30'},
        {'nombre': 'Laukaa 3', 'longitud': '26.2', 'hora': 'Sábado 10:00'},
        {'nombre': 'Jyvaskyla 4', 'longitud': '19.4', 'hora': 'Sábado 11:30'},
        {'nombre': 'Laukaa 4', 'longitud': '26.2', 'hora': 'Sábado 13:00'},
        {'nombre': 'Power Stage', 'longitud': '10.5', 'hora': 'Domingo 12:15'},
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

  List<Map<String, dynamic>> _getPilotos() {
    return [
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
  }

  Map<String, dynamic> _getCondiciones() {
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    if (nombreRally.contains('monte')) {
      return {
        'icono': Icons.ac_unit,
        'temperatura': '2',
        'clima': 'Nieve',
        'humedad': '85',
        'viento': '12',
        'prevision':
            'Condiciones variables con posibilidad de nieve y hielo en las zonas de mayor altitud. Temperaturas entre -5°C y +8°C dependiendo de la elevación. Alta probabilidad de cambios repentinos en el clima.',
      };
    }

    if (nombreRally.contains('portugal')) {
      return {
        'icono': Icons.wb_sunny,
        'temperatura': '23',
        'clima': 'Soleado',
        'humedad': '55',
        'viento': '8',
        'prevision':
            'Tiempo predominantemente seco y soleado, con temperaturas diurnas entre 20°C y 25°C. Posibilidad de chubascos aislados por la tarde. Condiciones ideales para los tramos de tierra, con buena visibilidad durante todo el rally.',
      };
    }

    return {
      'icono': Icons.cloud,
      'temperatura': '18',
      'clima': 'Parcialmente nublado',
      'humedad': '65',
      'viento': '10',
      'prevision':
          'Condiciones variables con alternancia de sol y nubes. Temperaturas moderadas entre 15°C y 20°C. Posibilidad de precipitaciones ligeras en algunos momentos del rally, lo que podría afectar a la adherencia en los tramos.',
    };
  }

  bool _esProximo() {
    // Lógica simplificada - en una implementación real habría que comparar fechas
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    // Consideramos próximos los rallies de la segunda mitad del año (simulado)
    return nombreRally.contains('letonia') ||
        nombreRally.contains('finlandia') ||
        nombreRally.contains('grecia') ||
        nombreRally.contains('chile') ||
        nombreRally.contains('europa central') ||
        nombreRally.contains('japón');
  }

  bool _esActual() {
    // Lógica simplificada - en una implementación real habría que comparar con fecha actual
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    // Simulamos que el Rally de Portugal está en curso
    return nombreRally.contains('portugal');
  }
}
