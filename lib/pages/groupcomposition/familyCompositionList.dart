import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/pages/groupcomposition/familyCompositionComponents.dart';
import 'package:casa_simple/pages/shedule/formShedule.dart';
import 'package:casa_simple/pages/shedule/sheduleComponents.dart';
import 'package:casa_simple/pages/shoppingList/formShoppingList.dart';
import 'package:casa_simple/pages/shoppingList/shoppingListComponents.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FamilyCompositionList extends StatefulWidget  {
  const FamilyCompositionList({Key? key}) : super(key: key);

  @override
  _FamilyCompositionListState createState() => _FamilyCompositionListState();
}

class _FamilyCompositionListState extends State<FamilyCompositionList> {

  FamilyCompositionComponents shoppingListComponents = new FamilyCompositionComponents();

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
          title: Text("Composição Familiar", style: TextStyle(color: PersonalColors.primaryText),),
          iconTheme: IconThemeData(
              color: PersonalColors.backgroundSecondButtons
          ),
          actions: [
            Container(
              child: TextButton(
                child: Icon(Icons.filter_alt_outlined),
                onPressed: () {
                  shoppingListComponents.onFilter(context);
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
                child: shoppingListComponents.onSheduleLines(context),
                onTap: (){
                  PersonalUtil.onNavigatorNext(FormShoppingList(), context);
                },
              );
            },
            itemCount: 10,
            //children: sheduleComponent.onSheduleLines()
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await shoppingListComponents.onVinculate(context);
        },
        backgroundColor: PersonalColors.backgroundColor,
        child: Icon(Icons.add,color: PersonalColors.backgroundButtons),
      ),
    );
  }


}
