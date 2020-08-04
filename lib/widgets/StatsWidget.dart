import 'package:flutter/material.dart';
import 'package:pokedex/graphql_api.graphql.dart';
import 'package:pokedex/widgets/StatWidget.dart';

class StatsWidget extends StatelessWidget {
  final List<PokemonDetails$Query$Pokemon$Stat> stats;
  final Color color;

  StatsWidget(this.stats, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var stat in stats) StatWidget(stat, color),
      ],
    );
  }
}
