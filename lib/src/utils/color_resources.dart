import 'package:flutter/material.dart';

class ColorResources {
  static const Color colorBlack = Color(0xFF000000);
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color colorF8F7F5 = Color(0xFFF8F7F5);
  static const Color color3364E0 = Color(0xFF3364E0);
  static const Color colorEFEEEC = Color(0xFFEFEEEC); //A5A9B2 F8F7F5
  static const Color colorA5A9B2 = Color(0xFFA5A9B2);
  static const Color colorE8E9EC = Color(0xFFE8E9EC); //E8E9EC
  static MaterialColor primarySwatch = createMaterialColor(colorWhite);

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
