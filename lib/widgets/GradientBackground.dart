import 'package:flutter/material.dart';

class GradientBackground {
  static const Color color1 = Color.fromRGBO(110, 149, 253, 0.6);
  static const Color color2 = Color.fromRGBO(81, 232, 94, 0.6);

  static BoxDecoration defaultBoxDecoration() {
    return buildBoxDecoration(color1, color2);
  }

  static BoxDecoration buildBoxDecoration(final Color from, final Color to) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [from, to],
      ),
    );
  }
}
