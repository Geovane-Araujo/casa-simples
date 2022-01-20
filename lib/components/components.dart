import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Componentes{

  static Color _primaryText = Color(0xFFFF7A00);
  static Color _primaryBack = Color(0xFF1E1E1E);

  static Widget TextButtonPersonalize(context,_sig,_nome,_conta){
    return TextButton(
      onPressed: () {
      },
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            child: CircleAvatar(
              child: Text(_sig,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                Text("$_nome",
                    style: TextStyle(
                        color: Colors.white
                    ),
                    textAlign: TextAlign.left
                ),
                Text("$_conta",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                    ),
                    textAlign: TextAlign.left
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
              icon: Icon(Icons.delete_outline_rounded,color: _primaryText),
              onPressed: (){}
          )
        ],
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: _primaryText,
            ),
            borderRadius: BorderRadius.circular(5)
        ),
      )
    );
  }

  static Widget TextButtonAcount(context,_sig,_nome,_conta){
    return TextButton(
        onPressed: () {
          // Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPassword(_nome,_sig,_conta)));
        },
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              child: CircleAvatar(
                child: Text(_sig,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                children: [
                  Text("$_nome",
                      style: TextStyle(
                          color: Colors.white
                      ),
                      textAlign: TextAlign.left
                  ),
                  Text("$_conta",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                      ),
                      textAlign: TextAlign.left
                  ),
                  // Text("Geov",style: TextStyle(color: Colors.white),textAlign: TextAlign.left),
                ],
              ),
            ),
            Spacer(flex: 1),
            TextButton(
              onPressed: (){
              },
              child: Text("Trocar a conta",
                  style: TextStyle(color: _primaryText)
              ),
            ),
          ],
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: _primaryText,
              ),
              borderRadius: BorderRadius.circular(5)
          ),
        )
    );
  }

  static Widget TextButtonPersonalizeOutline(_text,_backColor,_textColor, _outLineBorderColor){
    return TextButton(
      child: Row(
        children: [
          Text("$_text",
              style: TextStyle(
                  color: _textColor,
                  fontSize: 12,
              ),
              textAlign: TextAlign.left
          ),
          Spacer(flex: 1),
          IconButton(
              icon: Icon(Icons.east,color: _textColor),
              onPressed: (){}
          )
        ],
      ),
      style: TextButton.styleFrom(
        backgroundColor: _backColor,
        padding: EdgeInsets.only(top: 0,bottom: 0,left: 15),
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: _outLineBorderColor,
            ),
            borderRadius: BorderRadius.circular(5)
        ),
      ), onPressed: () {  },
    );
  }

}