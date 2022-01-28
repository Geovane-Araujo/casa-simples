import 'package:casa_simple/model/personalcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormShedule extends StatefulWidget {
  const FormShedule({Key? key}) : super(key: key);

  @override
  _FormSheduleState createState() => _FormSheduleState();
}

class _FormSheduleState extends State<FormShedule> {

  TextEditingController _data = new TextEditingController();
  DateFormat formato = DateFormat('dd/MM/yyyy');

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
        title: Text("Cadastro Agendamento", style: TextStyle(color: PersonalColors.primaryText),),
        iconTheme: IconThemeData(
            color: PersonalColors.backgroundSecondButtons
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        color: PersonalColors.backgroundColor,
        child: ListView(
          children: [
            Container(
              height: 44,
              margin: EdgeInsets.all(10),
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
              margin: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: PersonalColors.primaryText,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Descrição",
                    fillColor: PersonalColors.backgroundButtons,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: PersonalColors.backgroundButtons),
                    )
                ),
              ),
            ),
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              child: TextField(
                minLines: 70,
                maxLines: 100,
                style: TextStyle(
                  color: PersonalColors.primaryText,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    labelText: "Observações",
                    fillColor: PersonalColors.backgroundButtons,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: PersonalColors.backgroundButtons),
                    )
                ),
              ),
            ),
            Container(
                width: 130,
                height: 44,
                margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: PersonalColors.backgroundButtons
                  ),
                  child: Text("Salvar",style: TextStyle(color: Colors.white)),
                  onPressed: (){
                    // PersonalUtil.onNavigatorNext(Home(), context);
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}

