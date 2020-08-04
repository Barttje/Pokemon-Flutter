import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/screens/itemListScreen/ItemListScreen.dart';
import 'package:pokedex/screens/movesScreen/MovesScreen.dart';
import 'package:pokedex/screens/pokemonScreen/PokemonScreen.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Widget icon;
  final Widget activeIcon;

  TabNavigationItem(
      {@required this.page,
      @required this.title,
      @required this.icon,
      @required this.activeIcon});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: PokemonScreen(),
          icon:
              SvgPicture.asset("assets/icons/pikachu.svg", color: Colors.grey),
          activeIcon:
              SvgPicture.asset("assets/icons/pikachu.svg", color: Colors.black),
          title: Text("Pokémon"),
        ),
        TabNavigationItem(
          page: MovesScreen(),
          icon: SvgPicture.asset("assets/icons/moves.svg", color: Colors.grey),
          activeIcon:
              SvgPicture.asset("assets/icons/moves.svg", color: Colors.black),
          title: Text("Moves"),
        ),
        TabNavigationItem(
          page: ItemListScreen(),
          icon: SvgPicture.asset("assets/icons/items.svg", color: Colors.grey),
          activeIcon:
              SvgPicture.asset("assets/icons/items.svg", color: Colors.black),
          title: Text("Items"),
        ),
      ];
}
