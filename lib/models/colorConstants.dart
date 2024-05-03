import 'package:flutter/material.dart';

class colorConstants {
  static Color deepPurple = Color(0xff3D30A2);
  static Color fuxiaPurple = Color(0xffB15EFF);
  static Color orangito = Color(0xffFFA33C);
  static Color yellowish = Color(0xffFFFB73);
  static Color periwinkle = Color(0xff83A2FF);
  static Color lightPeriwinkle = Color(0xffB4BDFF);
  static Color sand = Color(0xffFFDD95);
  static Color pinky = Color(0xffFF7ED4);

  static TextStyle positiveWord = TextStyle(
    color: colorConstants.fuxiaPurple,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  static TextStyle negativeWord = TextStyle(
    color: colorConstants.deepPurple,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  static TextStyle helpfulWord = TextStyle(
    color: colorConstants.orangito,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  //colorConstants({Key? key});
}
