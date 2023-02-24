import 'package:flutter/widgets.dart';
import 'dart:developer';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void int (BuildContext context){
    screenWidth =MediaQuery.of(context).size.width;
    screenHeight=MediaQuery.of(context).size.height;
    orientation=MediaQuery.of(context).orientation;

    defaultSize = orientation ==Orientation.landscape
    ? screenHeight! * 0.024
        : screenWidth! *0.024;

    print('the default size $defaultSize');


  }

}