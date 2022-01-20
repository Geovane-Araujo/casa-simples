import 'package:casa_simple/model/personalcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalColors.primaryBack,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: PersonalColors.primaryText,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Login",
                    hintText: "Login",
                    fillColor: PersonalColors.hintBackInput,
                    border: OutlineInputBorder(borderSide: BorderSide(color: PersonalColors.hintBackInput))
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: PersonalColors.primaryText,
                ),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Senha",
                    hintText: "senha",
                    fillColor: PersonalColors.hintBackInput,
                    border: OutlineInputBorder(borderSide: BorderSide(color: PersonalColors.hintBackInput))
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: PersonalColors.primaryText
                  ),
                  child: Text("Entrar",style: TextStyle(color: Colors.white)),
                  onPressed: (){

                  },
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 5,left: 10,right: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: PersonalColors.primaryText
                  ),
                  child: Text("Cadastre-se",style: TextStyle(color: Colors.white)),
                  onPressed: (){

                  },
                )
            )
          ],
        ),
      ),
    );
  }
}
