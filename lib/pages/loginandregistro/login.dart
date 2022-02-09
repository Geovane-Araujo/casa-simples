import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/pages/loginandregistro/register/register.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Login",
                    fillColor: PersonalColors.backgroundButtons,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: PersonalColors.backgroundButtons),
                    )
                ),
              ),
            ),
            Container(
              height: 44,
              margin: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: PersonalColors.primaryText,
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Senha",
                    fillColor: PersonalColors.backgroundButtons,
                    border: OutlineInputBorder(borderSide: BorderSide(color: PersonalColors.backgroundButtons))
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
                      child: Text("Entrar",style: TextStyle(color: Colors.white)),
                      onPressed: (){
                        PersonalUtil.onNavigatorNext(Home(), context);
                      },
                    )
                ),
                Container(
                    width: 130,
                    height: 44,
                    margin: EdgeInsets.only(top: 5,left: 10,right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(200))
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: PersonalColors.backgroundButtons,
                      ),
                      child: Text("Registro",style: TextStyle(color: Colors.white)),
                      onPressed: (){
                        PersonalUtil.onNavigatorNext(Registro(), context);
                      },
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(200))
                        ),
                        child: TextButton(
                          child: Image.asset("assets/images/Google.png"),
                          onPressed: (){
                          },
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(200))
                        ),
                        child: TextButton(
                          child: Image.asset("assets/images/facebook.png"),
                          onPressed: (){
                          },
                        )
                    ),
                  ],
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
