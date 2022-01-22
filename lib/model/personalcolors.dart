import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalColors{

  static Color backgroundColor = Color(0xFFFFE6E1);
  static Color primaryText = Color(0xFFFFFFFF);
  static Color backgroundButtons = Color(0xFFFFB077);
  static Color backgroundSecondButtons = Color(0xFFEA8D7D);
  static Color backgroundDetails = Color(0xFFF4C097);
  static Color primaryBack  = Color(0xFFFFFFFF);
  static Color primaryTextColor = Color(0xFFF5F1F1);
  static Color textHint = Color(0xFFFCF4F4);

  static const MaterialColor personalSwatch = const MaterialColor(
    0xFFEA8D7D, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffce5641),//10%
      100: const Color(0xffb74c3a),//20%
      200: const Color(0xffa04332),//30%
      300: const Color(0xff89392b),//40%
      400: const Color(0xff733024),//50%
      500: const Color(0xff5c261d),//60%
      600: const Color(0xff451c16),//70%
      700: const Color(0xff2e130e),//80%
      800: const Color(0xff170907),//90%
      900: const Color(0xff000000),//100%
    },
  );
}