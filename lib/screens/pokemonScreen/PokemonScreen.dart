import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/screens/pokemonScreen/widgets/PokemonListCard.dart';
import 'package:pokedex/widgets/DefaultContainer.dart';

import '../../graphql_api.graphql.dart';

class PokemonScreen extends StatefulWidget {
  @override
  _PokemonScreenState createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  String query = "";

  handleSearchUpdate(String query) {
    setState(() {
      this.query = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      title: "Pokémon",
      searchCallback: handleSearchUpdate,
      child: Query(
        options: QueryOptions(
            documentNode: PokemonScreenQuery().document,
            variables: {'first': 151, 'after': 0}),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.loading && result.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (result.hasException) {
            return Text('\nErrors: \n  ' + result.exception.toString());
          }

          var pokemonOfGeneration =
              PokemonScreen$Query.fromJson(result.data).pokemonOfGeneration;

          var filteredPokemon = pokemonOfGeneration.pokemon.where((pokemon) =>
              pokemon.name.toUpperCase().contains(query.toUpperCase()));

          return ListView(
            children: [
              for (var entry in filteredPokemon) PokemonListCard(entry),
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
      ),
    );
  }
}
