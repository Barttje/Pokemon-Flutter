import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/graphql_api.dart';
import 'package:pokedex/screens/itemListScreen/widgets/ItemListCard.dart';

import 'GradientBackground.dart';

class DetailScreen extends StatelessWidget {
  final Widget content;
  final String title;
  final Widget image;
  final BoxDecoration background;
  final int imageHeight;

  DetailScreen(this.content, this.title, this.image, this.background,
      {this.imageHeight = 200});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background,
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 150),
                  Expanded(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60)),
                        ),
                        margin: EdgeInsets.all(0)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox.fromSize(
                    size: Size(0, 150 - imageHeight / 2),
                  ),
                  SizedBox(
                    height: 200,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: image,
                    ),
                  ),
                  Text(
                    titleCase(title),
                    style: TextStyle(fontSize: 40),
                  ),
                  content,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
