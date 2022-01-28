import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class FamilyCompositionComponents{

  TextEditingController _data = new TextEditingController();
  DateFormat formato = DateFormat('dd/MM/yyyy');

  onSheduleLines(context) {

    return new Container(
      alignment: Alignment.centerRight,
      height: 40,
      //margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                color: PersonalColors.backgroundSecondButtons
            ),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/1.8,
            height: 40,
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text("Geovane Araujo",
                  style: TextStyle(
                      color: PersonalColors.primaryText,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 40,
            width: 70,
            decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: PersonalColors.backgroundSecondButtons
                  ),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text("1600",
                    style: TextStyle(
                        color: PersonalColors.primaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onFilter(context) {
    showDialog(context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: PersonalColors.backgroundColor,
          titleTextStyle: TextStyle(
            color: PersonalColors.backgroundSecondButtons,
            fontSize: 20
          ),
          title: Text("Filtros", textAlign: TextAlign.center),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Container(
                  height: 44,
                  margin: EdgeInsets.all(5),
                  child: TextField(
                    controller: _data,
                    style: TextStyle(
                      color: PersonalColors.primaryText,
                    ),
                    onTap: () async {
                      DateTime? date = DateTime(1900);
                      FocusScope.of(context).requestFocus(new FocusNode());
                      date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2040)
                      );
                      if(date != null)
                        _data.text = formato.format(date);
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        filled: true,
                        labelText: "Data",
                        fillColor: PersonalColors.backgroundButtons,
                        border: OutlineInputBorder(borderSide: BorderSide(color: PersonalColors.backgroundButtons))
                    ),
                  ),
                ),
                Container(
                  height: 44,
                  margin: EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: PersonalColors.backgroundButtons
                    ),
                    child: Text("Filtrar",style: TextStyle(color: Colors.white)),
                    onPressed: (){
                    },
                  )
                ),
              ],
            ),
          ),
        )
    );
  }

  onVinculate(context) {
    showDialog(context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: PersonalColors.backgroundColor,
          titleTextStyle: TextStyle(
              color: PersonalColors.backgroundSecondButtons,
              fontSize: 20
          ),
          title: Text("Vincular Usuários", textAlign: TextAlign.center),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Container(
                  height: 44,
                  margin: EdgeInsets.all(5),
                  child: TextField(
                    style: TextStyle(
                      color: PersonalColors.primaryText,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        labelText: "Nick Usuário",
                        fillColor: PersonalColors.backgroundButtons,
                        border: OutlineInputBorder(borderSide: BorderSide(color: PersonalColors.backgroundButtons))
                    ),
                  ),
                ),
                Container(
                    height: 44,
                    margin: EdgeInsets.all(5),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: PersonalColors.backgroundButtons
                      ),
                      child: Text("Convidar",style: TextStyle(color: Colors.white)),
                      onPressed: (){
                      },
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}