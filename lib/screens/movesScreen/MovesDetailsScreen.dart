import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/graphql_api.dart';
import 'package:pokedex/screens/pokemonScreen/widgets/TypeIcon.dart';
import 'package:pokedex/widgets/DetailScreen.dart';
import 'package:pokedex/widgets/TypeNameIcon.dart';

class MovesDetailsScreen extends StatelessWidget {
  final MovesScreen$Query$Move move;

  MovesDetailsScreen(this.move);

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            documentNode: MovesDetailsQuery().document,
            variables: {"id": move.id}),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.loading && result.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          MovesDetails$Query moveDetails =
              MovesDetails$Query.fromJson(result.data);
          return DetailScreen(getContent(moveDetails.moveById), move.name,
              getImage(), getBackgroundBasedOnName(move.type.name));
        });
  }

  Widget getImage() {
    return Hero(tag: move.name, child: TypeIcons([move.type.name]));
  }

  Widget getContent(MovesDetails$Query$Move move) {
    var typeColor = getColorBasedOnName(move.type.name);
    var movePower = move.power != null ? move.power.toString() : "-";
    var moveAccuracy =
        move.accuracy != null ? "${move.accuracy.toString()}%" : "-";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox.fromSize(
          size: Size(0, 2),
        ),
        TypeNameIcons([move.type.name]),
        SizedBox.fromSize(
          size: Size(0, 15),
        ),
        Container(
          constraints: BoxConstraints(
            maxHeight: 200,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 32),
              child: Center(
                child: Text(
                  (move.effectEntries[0].effect.replaceAll(
                      "\$effect_chance", move.effectChance.toString())),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ),
        SizedBox.fromSize(
          size: Size(0, 15),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    ("Power"),
                    style: TextStyle(fontSize: 20, color: typeColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    (movePower),
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  decoration: new BoxDecoration(
                    color: typeColor.withOpacity(0.5),
                    borderRadius: new BorderRadius.all(
                      Radius.circular(1.0),
                    ),
                  ),
                  child: SizedBox(width: 2, height: 50),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    ("Accuracy"),
                    style: TextStyle(fontSize: 20, color: typeColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    (moveAccuracy),
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  decoration: new BoxDecoration(
                    color: typeColor.withOpacity(0.5),
                    borderRadius: new BorderRadius.all(
                      Radius.circular(1.0),
                    ),
                  ),
                  child: SizedBox(width: 2, height: 50),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    ("PP"),
                    style: TextStyle(fontSize: 20, color: typeColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    (move.pp.toString()),
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
