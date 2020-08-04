import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/graphql_api.dart';
import 'package:pokedex/widgets/DetailScreen.dart';
import 'package:pokedex/widgets/GradientBackground.dart';

class ItemDetailsScreen extends StatelessWidget {
  final ItemListScreen$Query$BaseItem item;

  ItemDetailsScreen(this.item);

  @override
  Widget build(BuildContext context) {
    return DetailScreen(getContent(), titleCase(this.item.name), getImage(),
        GradientBackground.defaultBoxDecoration());
  }

  Widget getImage() {
    return Hero(
      tag: item.name,
      child: CachedNetworkImage(
        imageUrl: item.image,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget getContent() {
    return Column(
      children: <Widget>[
        SizedBox.fromSize(
          size: Size(0, 40),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 32),
          child: Center(
            child: Text(
              titleCase(item.effect),
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
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
