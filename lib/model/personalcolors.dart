import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalColors{

  static Color backgroundSecondButtons = Color(0xFFEA8D7D);
  static Color backgroundButtons = Color(0xFFFFB077);
  static Color backgroundDetails = Color(0xFFF4C097);
  static Color backgroundColor = Color(0xFFFFE6E1);
  static Color primaryText = Color(0xFFFFFFFF);
  static Color primaryBack  = Color(0xFFFFFFFF);
  static Color primaryTextColor = Color(0xFFF5F1F1);

  static const MaterialColor personalSwatch = const MaterialColor(
    0xFFEA8D7D, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffffffff),//10%
      100: const Color(0xffffffff),//20%
      200: const Color(0xffffffff),//30%
      300: const Color(0xffffffff),//40%
      400: const Color(0xffffffff),//50%
      500: const Color(0xffffffff),//60%
      600: const Color(0xffffffff),//70%
      700: const Color(0xffffffff),//80%
      800: const Color(0xffffffff),//90%
      900: const Color(0xffffffff),//100%
    },
  );
}