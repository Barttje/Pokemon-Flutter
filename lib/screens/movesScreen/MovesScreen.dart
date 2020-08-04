import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/graphql_api.dart';
import 'package:pokedex/screens/movesScreen/widgets/MovesListCard.dart';
import 'package:pokedex/widgets/DefaultContainer.dart';

class MovesScreen extends StatefulWidget {
  @override
  _MovesScreenState createState() => _MovesScreenState();
}

class _MovesScreenState extends State<MovesScreen> {
  String query = "";
  handleSearchUpdate(String query) {
    setState(() {
      this.query = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
        searchCallback: handleSearchUpdate,
        title: "Moves",
        child: Query(
          options: QueryOptions(documentNode: MovesScreenQuery().document),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.loading && result.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            var movesOfGeneration =
                MovesScreen$Query.fromJson(result.data).movesOfGeneration;
            var filteredMovesOfGeneration = movesOfGeneration.where((element) =>
                element.name.toUpperCase().contains(query.toUpperCase()));
            return ListView(
              children: [
                for (var entry in filteredMovesOfGeneration)
                  MovesListCard(entry),
                if (result.loading)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                    ],
                  ),
              ],
            );
          },
        ));
  }
}
