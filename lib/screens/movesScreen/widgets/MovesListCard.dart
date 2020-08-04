import 'package:flutter/material.dart';
import 'package:pokedex/screens/ItemScreen/ItemDetailsScreen.dart';
import 'package:pokedex/screens/pokemonScreen/widgets/TypeIcon.dart';
import '../../../graphql_api.graphql.dart';
import '../MovesDetailsScreen.dart';

class MovesListCard extends StatelessWidget {
  final MovesScreen$Query$Move move;

  MovesListCard(this.move);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MovesDetailsScreen(move)),
        )
      },
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
//          leading: CachedNetworkImage(
//            imageUrl: pokemon.image,
//          ),
            title: Text(titleCase(move.name)),
//          subtitle: Text('#${pokemon.id}'),
            trailing: Hero(tag: move.name, child: TypeIcons([move.type.name])),
          ),
        ),
      ),
    );
  }
}
