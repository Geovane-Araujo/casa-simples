import 'package:casa_simple/model/personalcolors.dart';
import 'package:casa_simple/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShoppingListComponents{

  TextEditingController _data = new TextEditingController();
  DateFormat formato = DateFormat('dd/MM/yyyy');

  onSheduleLines(context) {

    return new Container(
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
        children: [
          Container(
            height: 40,
            width: 70,
            decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                      color: PersonalColors.backgroundSecondButtons
                  ),
                )
            ),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset("assets/images/carrinho.png",
                        height: 30,
                        width: 30
                    )
                ),
                Text("2",
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
            width: MediaQuery.of(context).size.width/1.8,
            height: 40,
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text("Arroz",
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
            width: 40,
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
                  child: Image.asset("assets/images/carrinho.png",
                      height: 30,
                      width: 30,
                  )
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
}