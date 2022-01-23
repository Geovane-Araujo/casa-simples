import 'package:casa_simple/model/personalcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
          ),
          elevation: 1,
          backgroundColor: PersonalColors.backgroundButtons,
          centerTitle: true,
          title: Text("Tarefas", style: TextStyle(color: PersonalColors.primaryText),),
          iconTheme: IconThemeData(
              color: PersonalColors.backgroundSecondButtons
          ),
          actions: [
            Container(
              child: TextButton(
                child: Icon(Icons.filter_alt_outlined),
                onPressed: () {},
              ),
            ),
          ]
      ),
      body: Container(
        color: PersonalColors.backgroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: PersonalColors.backgroundButtons,
        child: Icon(Icons.add,color: PersonalColors.primaryText),
      ),
    );
  }
}
