import 'package:flutter/material.dart';
import 'package:pokedex/graphql_api.graphql.dart';

class StatWidget extends StatelessWidget {
  final PokemonDetails$Query$Pokemon$Stat stat;
  final Color color;

  StatWidget(this.stat, this.color);

  String name() {
    switch (stat.name) {
      case 'attack':
        return 'ATK';
        break;
      case 'defense':
        return 'DEF';
        break;
      case 'special-defense':
        return 'S-DEF';
        break;
      case 'special-attack':
        return 'S-ATK';
        break;
      case 'speed':
        return 'SPD';
        break;
      default:
        return stat.name.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            child: Text(name(),
                style: TextStyle(
                  color: this.color,
                )),
          ),
          Container(
            width: 30,
            child: Text(
              stat.baseStat.toString().padLeft(3, '0'),
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),
          Container(
            width: 250,
            child: Row(
              children: <Widget>[
                new Flexible(
                  flex: stat.baseStat,
                  child: Container(
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                    height: 15,
                  ),
                ),
                new Flexible(
                  flex: 250 - stat.baseStat,
                  child: Container(
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
