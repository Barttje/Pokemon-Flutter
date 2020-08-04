import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/graphql_api.dart';
import 'package:pokedex/screens/pokemonScreen/widgets/TypeIcon.dart';
import 'package:pokedex/widgets/DetailScreen.dart';
import 'package:pokedex/widgets/StatsWidget.dart';
import 'package:pokedex/widgets/TypeNameIcon.dart';

class PokemonDetailsScreen extends StatelessWidget {
  final int pokemonId;

  PokemonDetailsScreen(this.pokemonId);
  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            documentNode: PokemonDetailsQuery().document,
            variables: {"id": pokemonId}),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.loading && result.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          PokemonDetails$Query pokemonDetails =
              PokemonDetails$Query.fromJson(result.data);
          var types =
              pokemonDetails.pokemonById.types.map((e) => e.name).toList();

          return DetailScreen(
            getContent(pokemonDetails),
            pokemonDetails.pokemonById.name,
            getImage(),
            getBackgroundBasedOnName(types[0]),
            imageHeight: 250,
          );
        });
  }

  Widget getImage() {
    return Hero(
      tag: "pokemon-$pokemonId",
      child: CachedNetworkImage(
        imageUrl:
            "https://pokemon-graphql.s3.eu-central-1.amazonaws.com/$pokemonId.png",
      ),
    );
  }

  Widget getContent(PokemonDetails$Query pokemonDetails) {
    var types = pokemonDetails.pokemonById.types.map((e) => e.name).toList();
    var description = pokemonDetails.pokemonById.description
        .replaceAll(",\n", ", \n")
        .replaceAll("\n", " ")
        .replaceAll("  ", " ")
        .replaceAll("POKéMON", "Pokémon");

    return Column(children: <Widget>[
      Center(child: TypeNameIcons(types)),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 24, right: 24),
        child: Center(
            child: Text(
          description,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 24, right: 24),
        child: Center(
          child: StatsWidget(
              pokemonDetails.pokemonById.stats, getColorBasedOnName(types[0])),
        ),
      )
    ]);
  }
}
