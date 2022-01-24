import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/pages/shedule/formShedule.dart';
import 'package:casa_simple/pages/shedule/sheduleComponent.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Agenda extends StatefulWidget  {
  const Agenda({Key? key}) : super(key: key);

  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {

  SheduleComponent sheduleComponent = new SheduleComponent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        elevation: 1,
        backgroundColor: PersonalColors.backgroundButtons,
        centerTitle: true,
        title: Text("Agenda", style: TextStyle(color: PersonalColors.primaryText),),
        iconTheme: IconThemeData(
            color: PersonalColors.backgroundSecondButtons
        ),
        actions: [
          Container(
            child: TextButton(
              child: Icon(Icons.filter_alt_outlined),
              onPressed: () {
                sheduleComponent.onFilter(context);
              },
            ),
          ),
        ]
      ),
      body: Container(
        color: PersonalColors.backgroundColor,
        child: Container(
          decoration: BoxDecoration(
            color: PersonalColors.backgroundButtons,
            borderRadius: BorderRadius.all(
              Radius.circular(20)
            )
          ),
          margin: EdgeInsets.only(top: 20,left: 10,right: 10),
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
               return InkWell(
                 child: sheduleComponent.onSheduleLines(),
                 onTap: (){
                   PersonalUtil.onNavigatorNext(FormShedule(), context);
                 },
               );
            },
            itemCount: 50,
            //children: sheduleComponent.onSheduleLines()
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          PersonalUtil.onNavigatorNext(FormShedule(), context);
        },
        backgroundColor: PersonalColors.backgroundButtons,
        child: Icon(Icons.add,color: PersonalColors.primaryText),
      ),
    );
  }


}
