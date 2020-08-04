import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/graphql_api.dart';

import '../PokemonDetailsScreen.dart';
import 'TypeIcon.dart';

class PokemonListCard extends StatelessWidget {
  final PokemonScreen$Query$PokemonConnection$Pokemon pokemon;

  PokemonListCard(this.pokemon);

  @override
  Widget build(BuildContext context) {
    var types = pokemon.types.map((e) => e.name);
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PokemonDetailsScreen(pokemon.id)), )},
      child: Card(
        margin: EdgeInsets.all(0),
        child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Colors.grey[400], width: 2),
            ),
          ),
          child: ListTile(
            leading: Hero(
              tag: "pokemon-${pokemon.id}",
              child: CachedNetworkImage(
                imageUrl: pokemon.image,
              ),
            ),
            title: Text(pokemon.name),
            subtitle: Text('#${pokemon.id}'),
            trailing: TypeIcons(types.toList()),
          ),
        ),
      ),
    );
  }
}
