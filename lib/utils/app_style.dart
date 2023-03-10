import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primarycolor = primary;
  static Color textcolor = const Color(0xFF3b3b3b);
  static Color bgcolor = const Color(0xFFeeedf2);
  static Color orangecolor = const Color(0XFFF37B67);
  static Color kakicolor = const Color(0XFFd2bdb6);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textcolor, fontWeight: FontWeight.w500);
  static TextStyle headlinestyle1 =
      TextStyle(fontSize: 26, color: textcolor, fontWeight: FontWeight.bold);
  static TextStyle headlinestyle2 =
      TextStyle(fontSize: 21, color: textcolor, fontWeight: FontWeight.bold);
  static TextStyle headlinestyle3 =
      const TextStyle(fontSize: 17,  fontWeight: FontWeight.w500);
  static TextStyle headlinestyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
