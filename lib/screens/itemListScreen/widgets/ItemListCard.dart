import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/graphql_api.dart';
import 'package:pokedex/screens/ItemScreen/ItemDetailsScreen.dart';

class ItemListCard extends StatelessWidget {
  final ItemListScreen$Query$BaseItem item;

  ItemListCard(this.item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemDetailsScreen(this.item)),
        );
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
            leading: Hero(
              tag: item.name,
              child: CachedNetworkImage(
                imageUrl: item.image,
              ),
            ),
            title: Text(titleCase(item.name)),
          ),
        ),
      ),
    );
  }
}

String titleCase(String text) {
  if (text.isEmpty) return text;

  return text
      .split('-')
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join(' ');
}
