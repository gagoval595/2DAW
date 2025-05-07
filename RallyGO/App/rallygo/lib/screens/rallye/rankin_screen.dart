// lib/screens/rallye/rankin_screen.dart
import 'package:flutter/material.dart';
import '../../models/campeonato.dart';

class RankingScreen extends StatefulWidget {
  final Campeonato campeonato;
  const RankingScreen({Key? key, required this.campeonato}) : super(key: key);

  @override
  _RankingScreenState createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen>
    with AutomaticKeepAliveClientMixin<RankingScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Center(
      child: Text('Ranking de pilotos (pendiente de implementar)'),
    );
  }
}
