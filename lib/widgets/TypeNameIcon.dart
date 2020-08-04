import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/screens/pokemonScreen/widgets/TypeIcon.dart';
import 'package:pokedex/widgets/GradientBackground.dart';

class TypeNameIcons extends StatelessWidget {
  final List<String> types;

  TypeNameIcons(this.types);

  @override
  Widget build(BuildContext context) {
    var types = this
        .types
        .map(
          (name) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: new BoxDecoration(
                color: getColorBasedOnName(name),
                borderRadius: new BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 5, left: 5),
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          "assets/types/${name}.svg",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      child: Text(
                        name.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
        .toList();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: types,
    );
  }
}
