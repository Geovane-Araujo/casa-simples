import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: PersonalColors.backgroundDetails,
        title: Text("Casa Simples"),

      ),
      drawer: Drawer(
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
