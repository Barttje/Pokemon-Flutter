import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/widgets/GradientBackground.dart';

enum TYPE {
  bug,
  dark,
  dragon,
  electric,
  fairy,
  fighting,
  fire,
  flying,
  ghost,
  grass,
  ground,
  ice,
  normal,
  poison,
  psychic,
  rock,
  steel,
  water
}

class TypeIcons extends StatelessWidget {
  final List<String> types;

  TypeIcons(this.types);

  @override
  Widget build(BuildContext context) {
    var types = this
        .types
        .map(
          (name) => Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: getColorBasedOnName(name),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3.0,
                  )
                ],
              ),
              child: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset(
                  "assets/types/${name}.svg",
                  color: Colors.white,
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

Color getColorBasedOnName(String name) {
  switch (name) {
    case "bug":
      return Color(0xff9DC130);
      break;
    case "dark":
      return Color(0xff5F606D);
      break;
    case "dragon":
      return Color(0xff0773C7);
      break;
    case "electric":
      return Color(0xffEDD53F);
      break;
    case "fairy":
      return Color(0xffEF97E6);
      break;
    case "fighting":
      return Color(0xffD94256);
      break;
    case "fire":
      return Color(0xffF8A54F);
      break;
    case "flying":
      return Color(0xff9BB4E8);
      break;
    case "ghost":
      return Color(0xff6970C5);
      break;
    case "grass":
      return Color(0xff5DBE62);
      break;
    case "ground":
      return Color(0xffD78555);
      break;
    case "ice":
      return Color(0xff7ED4C9);
      break;
    case "normal":
      return Color(0xff9A9DA1);
      break;
    case "poison":
      return Color(0xffB563CE);
      break;
    case "psychic":
      return Color(0xffF87C7A);
      break;
    case "rock":
      return Color(0xffCEC18C);
      break;
    case "steel":
      return Color(0xff5596A4);
      break;
    case "water":
      return Color(0xff559EDF);
      break;
    default:
      return Color(0xff);
  }
}

const alpha = 1.0;

BoxDecoration getBackgroundBasedOnName(String name) {
  switch (name) {
    case "bug":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(146, 188, 44, alpha),
          Color.fromRGBO(175, 200, 54, alpha));
      break;
    case "dark":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(89, 87, 97, alpha),
          Color.fromRGBO(110, 117, 135, alpha));
      break;
    case "dragon":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(12, 105, 200, alpha),
          Color.fromRGBO(1, 128, 199, alpha));
      break;
    case "electric":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(237, 213, 62, alpha),
          Color.fromRGBO(251, 226, 115, alpha));
      break;
    case "fairy":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(236, 140, 229, alpha),
          Color.fromRGBO(243, 167, 231, alpha));
      break;
    case "fighting":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(206, 66, 101, alpha),
          Color.fromRGBO(231, 67, 71, alpha));
      break;
    case "fire":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(251, 155, 8, alpha),
          Color.fromRGBO(251, 174, 70, alpha));
      break;
    case "flying":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(144, 167, 218, alpha),
          Color.fromRGBO(166, 194, 242, alpha));
      break;
    case "ghost":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(81, 106, 172, alpha),
          Color.fromRGBO(119, 115, 212, alpha));
      break;
    case "grass":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(95, 188, 81, alpha),
          Color.fromRGBO(90, 193, 120, alpha));
      break;
    case "ground":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(220, 117, 69, alpha),
          Color.fromRGBO(210, 148, 99, alpha));
      break;
    case "ice":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(112, 204, 189, alpha),
          Color.fromRGBO(140, 221, 212, alpha));
      break;
    case "normal":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(146, 152, 164, alpha),
          Color.fromRGBO(163, 164, 158, alpha));
      break;
    case "poison":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(168, 100, 199, alpha),
          Color.fromRGBO(194, 97, 212, alpha));
      break;
    case "psychic":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(246, 111, 113, alpha),
          Color.fromRGBO(254, 159, 146, alpha));
      break;
    case "rock":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(197, 180, 137, alpha),
          Color.fromRGBO(215, 205, 144, alpha));
      break;
    case "steel":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(82, 134, 157, alpha),
          Color.fromRGBO(88, 166, 170, alpha));
      break;
    case "water":
      return GradientBackground.buildBoxDecoration(
          Color.fromRGBO(85, 158, 223, alpha),
          Color.fromRGBO(105, 185, 227, alpha));
      break;
    default:
      return GradientBackground.defaultBoxDecoration();
  }
}
