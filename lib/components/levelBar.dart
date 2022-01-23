import 'package:casa_simple/model/personalcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LevelBar extends StatelessWidget {
  const LevelBar({
    Key? key,
    required this.level,
    required this.maxLevel
  }) : super(key: key);

  final int level;
  final int maxLevel;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: onLevels(level,maxLevel)
      )
    );
  }

  onLevels(level, maxLevel){
    List list = <Widget>[];
    BorderRadius border = BorderRadius.zero;

    Widget image = Image.asset("assets/images/Estrela.png",width: 25,height: 20);

    var pointlevel = (maxLevel / 5);
    var lv = 0;
    for(int i = 0;i < 5;i++){
      if(level >= pointlevel){
        lv = lv + 1;
      }
      pointlevel = pointlevel + pointlevel;
    }

    list.add(image);

    for(int i = 0;i < 5;i++){
      Container container = new Container();
      Color corBar = PersonalColors.primaryBack;

      if(i == 0){
        border = BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5));
      } else if(i == 4){
        border = BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5));
      } else {
        border =  BorderRadius.zero;
      }

      if(lv >= (i + 1)){
        corBar = PersonalColors.backgroundSecondButtons;
      } else {
        corBar = PersonalColors.primaryBack;
      }
      container = Container(
        margin: EdgeInsets.all(1),
        width: 20,
        height: 10,
        decoration: BoxDecoration(
            color: corBar,
            borderRadius: border
        ),
      );

      list.add(container);
    }
    return list;
  }
}
