import 'package:flutter/material.dart';
import '../../models/campeonato.dart';

class NoticiasScreen extends StatefulWidget {
  final Campeonato campeonato;
  const NoticiasScreen({Key? key, required this.campeonato}) : super(key: key);

  @override
  _NoticiasScreenState createState() => _NoticiasScreenState();
}

class _NoticiasScreenState extends State<NoticiasScreen>
    with AutomaticKeepAliveClientMixin<NoticiasScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final noticias = _getNoticiasRally();

    return noticias.isEmpty
        ? Center(child: Text('No hay noticias disponibles para este rally'))
        : ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: noticias.length,
            itemBuilder: (context, index) {
              final noticia = noticias[index];
              return _buildNoticiaCard(noticia);
            },
          );
  }

  Widget _buildNoticiaCard(Map<String, dynamic> noticia) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
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
          // Imagen de la noticia
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(noticia['imagen']),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Etiqueta de categoría
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    noticia['categoria'],
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 12),

                // Título
                Text(
                  noticia['titulo'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),

                // Fecha y autor
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      noticia['fecha'],
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 12),
                    Icon(Icons.person, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      noticia['autor'],
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),

                // Resumen
                Text(
                  noticia['resumen'],
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16),

                // Botones de acción
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.article, size: 18),
                      label: Text('Leer más'),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.share, size: 18),
                          onPressed: () {},
                          tooltip: 'Compartir',
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.all(8),
                        ),
                        IconButton(
                          icon: Icon(Icons.bookmark_border, size: 18),
                          onPressed: () {},
                          tooltip: 'Guardar',
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.all(8),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _getNoticiasRally() {
    final nombreRally = widget.campeonato.nombre.toLowerCase();

    // Noticias para Rally de Montecarlo
    if (nombreRally.contains('monte')) {
      return [
        {
          'titulo': 'Ogier consigue su novena victoria en el Rally de Montecarlo',
          'fecha': '28 Enero 2024',
          'autor': 'Carlos Martínez',
          'categoria': 'Resultados',
          'imagen': 'assets/images/campeonatos/montecarlo.jpg',
          'resumen': 'Sébastien Ogier ha conseguido su novena victoria en el Rally de Montecarlo, consolidándose como el piloto más exitoso en la historia de esta mítica prueba. El francés dominó desde el primer día y supo gestionar su ventaja.',
        },
        {
          'titulo': 'Evans sufre un problema mecánico que le deja fuera de la lucha por el podio',
          'fecha': '27 Enero 2024',
          'autor': 'Laura Gómez',
          'categoria': 'Incidencias',
          'imagen': 'assets/images/logoRallyGoCirculo.png',
          'resumen': 'Elfyn Evans tuvo que abandonar la lucha por el podio tras sufrir un problema en la transmisión de su Toyota GR Yaris Rally1 durante la etapa del sábado, dejando vía libre a sus rivales.',
        },
        {
          'titulo': 'Las condiciones mixtas complican la elección de neumáticos en Montecarlo',
          'fecha': '26 Enero 2024',
          'autor': 'Miguel Sánchez',
          'categoria': 'Análisis',
          'imagen': 'assets/images/logoRallyGoCirculo.png',
          'resumen': 'La mezcla de asfalto seco, mojado y placas de hielo en los tramos alpinos está generando un auténtico rompecabezas para los equipos a la hora de elegir la combinación correcta de neumáticos.',
        },
      ];
    }

    // Noticias para Rally de Portugal
    if (nombreRally.contains('portugal')) {
      return [
        {
          'titulo': 'Neuville lidera el Rally de Portugal tras la primera etapa',
          'fecha': '10 Mayo 2024',
          'autor': 'Pedro Alonso',
          'categoria': 'Resultados',
          'imagen': 'assets/images/campeonatos/portugal.jpg',
          'resumen': 'Thierry Neuville ha tomado el liderato del Rally de Portugal tras una impresionante actuación en los primeros tramos. El belga aventaja por 5.2 segundos a Ott Tänak y 8.7 a Sébastien Ogier.',
        },
        {
          'titulo': 'Miles de aficionados abarrotan el tramo de Fafe',
          'fecha': '11 Mayo 2024',
          'autor': 'Ana Fernández',
          'categoria': 'Ambiente',
          'imagen': 'assets/images/logoRallyGoCirculo.png',
          'resumen': 'Como cada año, el famoso tramo de Fafe y su espectacular salto han atraído a miles de aficionados que no han querido perderse uno de los momentos más emblemáticos del Mundial de Rally.',
        },
        {
          'titulo': 'Sordo: "Los tramos portugueses son de mis favoritos del calendario"',
          'fecha': '9 Mayo 2024',
          'autor': 'Juan Castro',
          'categoria': 'Entrevistas',
          'imagen': 'assets/images/logoRallyGoCirculo.png',
          'resumen': 'El piloto español Dani Sordo ha declarado en la rueda de prensa previa que los tramos portugueses son de sus favoritos por su técnica y la gran afición que acude a verlos: "Es como correr en casa".',
        },
      ];
    }

    // Noticias para Rally de Finlandia
    if (nombreRally.contains('finlandia')) {
      return [
        {
          'titulo': 'Rovanperä busca su tercera victoria consecutiva en su rally de casa',
          'fecha': '31 Julio 2024',
          'autor': 'Marta López',
          'categoria': 'Previo',
          'imagen': 'assets/images/campeonatos/finlandia.jpg',
          'resumen': 'Kalle Rovanperä llega como favorito al Rally de Finlandia, donde buscará su tercera victoria consecutiva ante su público. El joven finlandés conoce a la perfección estos rápidos tramos.',
        },
        {
          'titulo': 'Los saltos de Finlandia, un desafío para la suspensión de los Rally1',
          'fecha': '30 Julio 2024',
          'autor': 'David Ramos',
          'categoria': 'Técnica',
          'imagen': 'assets/images/logoRallyGoCirculo.png',
          'resumen': 'Los ingenieros de los equipos han trabajado intensamente para preparar las suspensiones de los coches ante los exigentes saltos finlandeses, donde los vehículos pueden volar más de 50 metros.',
        },
      ];
    }

    // Noticias genéricas para otros rallies
    return [
      {
        'titulo': 'Previo: Todo listo para el Rally de ${widget.campeonato.nombre}',
        'fecha': '3 días atrás',
        'autor': 'María García',
        'categoria': 'Previo',
        'imagen': widget.campeonato.imageAsset,
        'resumen': 'Los equipos han completado los reconocimientos y están ultimando la puesta a punto de sus vehículos para el Rally de ${widget.campeonato.nombre}, que comenzará este viernes con el tramo de calificación.',
      },
      {
        'titulo': 'El tiempo podría ser protagonista en ${widget.campeonato.nombre}',
        'fecha': '2 días atrás',
        'autor': 'Roberto Sánchez',
        'categoria': 'Análisis',
        'imagen': 'assets/images/logoRallyGoCirculo.png',
        'resumen': 'Las previsiones meteorológicas anuncian condiciones cambiantes durante el fin de semana, lo que podría complicar la estrategia de los equipos y añadir emoción a la prueba.',
      },
      {
        'titulo': 'Neuville: "Seguimos trabajando para mejorar el coche en todas las superficies"',
        'fecha': '1 día atrás',
        'autor': 'Carmen Rodríguez',
        'categoria': 'Entrevistas',
        'imagen': 'assets/images/logoRallyGoCirculo.png',
        'resumen': 'El líder del campeonato ha declarado que Hyundai sigue trabajando para mejorar el rendimiento del i20 N Rally1 en todas las superficies, con el objetivo de mantener el liderato del mundial.',
      },
    ];
  }
}