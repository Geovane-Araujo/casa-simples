import 'package:flutter/material.dart';

class PersonalUtil{

  static String onRoute = "http://192.168.1.7:8085/api";

  static onNavigatorNext(route, context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  }
  
  static onNavigatorBack(context){
    Navigator.pop(context);
  }
  static onNavigatorOrigin(route,context){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => route), (route) => false);
  }
}