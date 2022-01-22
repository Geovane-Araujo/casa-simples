import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Casa Simples",
      theme: ThemeData(
        hintColor: PersonalColors.textHint,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PersonalColors.backgroundDetails)
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: PersonalColors.primaryText)
        ),
        primarySwatch: PersonalColors.personalSwatch,
        primaryColor: PersonalColors.backgroundDetails,
        textSelectionTheme: TextSelectionThemeData(cursorColor: PersonalColors.primaryTextColor)
      ),
      home: onConveragePreferenceGuild(),
    );
  }

  onConveragePreferenceGuild(){
    int a = 0;
    if(a == 0)
      return Login();
    else
      return null;
  }
}




