import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/screens/itemListScreen/widgets/ItemListCard.dart';
import 'package:pokedex/widgets/DefaultContainer.dart';

import '../../graphql_api.graphql.dart';

class ItemListScreen extends StatefulWidget {
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  String query = "";

  handleSearchUpdate(String query) {
    setState(() {
      this.query = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      title: "Items",
      searchCallback: handleSearchUpdate,
      child: Query(
        options: QueryOptions(
          documentNode: ItemListScreenQuery().document,
        ),
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

          var items = ItemListScreen$Query.fromJson(result.data)
              .itemsOfGeneration
              .where((item) =>
                  item.name.toUpperCase().contains(query.toUpperCase()));

          return ListView(
            children: [
              for (var entry in items) ItemListCard(entry),
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
