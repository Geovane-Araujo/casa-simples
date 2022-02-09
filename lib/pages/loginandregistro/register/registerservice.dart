import 'dart:convert';
import 'package:casa_simple/model/users.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;



class RegisterService{

  static TextEditingController nick = new TextEditingController();
  static TextEditingController nome = new TextEditingController();
  static TextEditingController email = new TextEditingController();
  static TextEditingController senha = new TextEditingController();


  Future<String> onSave() async {
    Users users = onRead();
    var url = Uri.parse("${PersonalUtil.onRoute}/register");
    var response = await http.post(url, body: jsonEncode(users), headers: {"Content-Type": "application/json"});
    var ret = response.body;
    return ret;
  }

  Users onRead(){
    Users user = new Users();

    user.nick = nick.text;
    user.nome = nome.text;
    user.senha = senha.text;
    user.email = email.text;
    return user;
  }

}