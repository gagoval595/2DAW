// lib/screens/rallye/noticias_screen.dart
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
    return const Center(
      child: Text('Noticias del rally (pendiente de implementar)'),
    );
  }
}
