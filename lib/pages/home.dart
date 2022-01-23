import 'package:casa_simple/components/levelBar.dart';
import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/pages/FamilyComposition.dart';
import 'package:casa_simple/pages/loginandregistro/register.dart';
import 'package:casa_simple/pages/shoppingList.dart';
import 'package:casa_simple/pages/tasks.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'agenda.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: PersonalColors.backgroundSecondButtons
        ),
        backgroundColor: PersonalColors.backgroundButtons,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: PersonalColors.backgroundColor
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  color: PersonalColors.backgroundButtons,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CircleAvatar(
                    radius: 40,
                  ),
                  Text("Geovane Araújo",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 24
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text("Familia Araújo",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18
                    ),
                    textAlign: TextAlign.center,
                  ),
                  LevelBar(level: 2000,maxLevel: 5000)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30,left: 5,right: 5,bottom: 0),
              height: MediaQuery.of(context).size.height/2.2,
              child: Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: PersonalColors.backgroundButtons,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(
                        onPressed: () { PersonalUtil.onNavigatorNext(ShoppingLIst(), context); },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset("assets/images/carrinho.png",height: 40,width: 40),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Lista de Compras",
                                    style: TextStyle(
                                        color: PersonalColors.primaryText,
                                        fontSize: 16
                                    ),
                                    textAlign: TextAlign.center
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: PersonalColors.backgroundButtons,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(
                        onPressed: () { PersonalUtil.onNavigatorNext(Agenda(), context); },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset("assets/images/agenda.png",height: 40,width: 40),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Agenda",
                                    style: TextStyle(
                                        color: PersonalColors.primaryText,
                                        fontSize: 16
                                    ),
                                    textAlign: TextAlign.center
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: PersonalColors.backgroundButtons,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(
                        onPressed: () { PersonalUtil.onNavigatorNext(Tasks(), context); },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset("assets/images/tarefas.png",height: 40,width: 40),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("Tarefas",
                                  style: TextStyle(
                                      color: PersonalColors.primaryText,
                                      fontSize: 16
                                  ),
                                  textAlign: TextAlign.center
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: PersonalColors.backgroundButtons,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(
                        onPressed: () { PersonalUtil.onNavigatorNext(FamilyComposition(), context); },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset("assets/images/Familia.png",height: 40,width: 40),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("Composição Familiar",
                                  style: TextStyle(
                                    color: PersonalColors.primaryText,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 5,right: 5),
              height: 53,
              width: MediaQuery.of(context).size.width/1,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: PersonalColors.backgroundButtons,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container( margin: EdgeInsets.only(right: 20), child: Image.asset("assets/images/troca.png",height: 40,width: 40)),
                      Text("Trocar Casa",style: TextStyle(color: Colors.white))
                    ],
                ),
                onPressed: (){
                  PersonalUtil.onNavigatorNext(Registro(), context);
                },
              )
            )
          ],
        )
      ),
      drawer: Drawer(
        // backgroundColor: ,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: PersonalColors.backgroundDetails
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CircleAvatar(
                      radius: 40,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text("Geovane de Paula Araiujo", textAlign: TextAlign.center),
                    )
                  ],
                ),
              )
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("LIsta de Compras")
            ),
            ListTile(
                leading: Icon(Icons.fact_check_outlined),
                title: Text("Tarefas")
            ),
            ListTile(
                leading: Icon(Icons.family_restroom_outlined),
                title: Text("Composição Familiar")
            ),
            ListTile(
                leading: Icon(Icons.category),
                title: Text("Categorias")
            ),
            ListTile(
                leading: Icon(Icons.settings_applications_outlined),
                title: Text("Configurações")
            ),
            ListTile(
                leading: Icon(Icons.exit_to_app_outlined),
                title: Text("Sair")
            ),
            ListTile(
                title: Text("Versão do App 0.0.1", textAlign: TextAlign.center)
            )
          ],
        ),
      ),
    );
  }
}