import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home.dart';
import 'login.dart';

class ConfirmacaoRegistro extends StatefulWidget {
  const ConfirmacaoRegistro({Key? key}) : super(key: key);

  @override
  _ConfirmacaoRegistroState createState() => _ConfirmacaoRegistroState();
}

class _ConfirmacaoRegistroState extends State<ConfirmacaoRegistro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalColors.backgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image.asset("assets/logo/logo2.png",height: 200,width: 200),
            ),
            Container(
              height: 44,
              margin: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: PersonalColors.primaryText,
                ),
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Digite o Código de Validação",
                    fillColor: PersonalColors.backgroundButtons,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: PersonalColors.backgroundButtons),
                    )
                ),
              ),
            ),
            Column(
              children: [
                Container(
                    width: 130,
                    height: 44,
                    margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: PersonalColors.backgroundButtons
                      ),
                      child: Text("Confirmar",style: TextStyle(color: Colors.white)),
                      onPressed: (){
                        PersonalUtil.onNavigatorOrigin(Login(), context);
                      },
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
