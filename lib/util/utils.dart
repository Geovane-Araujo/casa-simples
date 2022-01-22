import 'package:flutter/material.dart';

class PersonalUtil{

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