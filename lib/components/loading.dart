import 'package:casa_simple/model/personalcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingFull extends StatelessWidget {
  const LoadingFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SpinKitRotatingCircle(
        color: PersonalColors.backgroundButtons,
        size: 50.0,
      ),
    );
  }

}
