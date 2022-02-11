import 'package:casa_simple/model/personalcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalInfo{


  static onShowModalInfo(response,context) async{

    String text = "";

    if(response.statusCode == 500){
      text = "Erro interno no servidor, por favor contactar o suporte";
    } else if(response.statusCode != 200){
      text = response.body;
    } else {
      text = "Sucesso";
    }

    showDialog(context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: PersonalColors.backgroundColor,
          titleTextStyle: TextStyle(
              color: PersonalColors.backgroundSecondButtons,
              fontSize: 20
          ),
          title: Text("Aviso", textAlign: TextAlign.center),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Container(
                    height: 44,
                    margin: EdgeInsets.all(5),
                    child: Text(text,
                      textAlign: TextAlign.center,
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}