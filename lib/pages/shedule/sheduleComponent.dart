import 'package:casa_simple/model/personalcolors.dart';
import 'package:flutter/cupertino.dart';

class SheduleComponent{

  onSheduleLines(){

    var lines = <Widget>[];

    // for(int i = 0;i < 100;i++){
    //   Container line = new Container();
    //   line =
    //   lines.add(line);
    // }

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
            width: 90,
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
                    child: Image.asset("assets/images/relógio.png",
                        height: 30,
                        width: 30
                    )
                ),
                Text("14:30",
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
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text("Dentista",
                  style: TextStyle(
                      color: PersonalColors.primaryText,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}