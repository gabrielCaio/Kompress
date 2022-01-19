import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static final CustomTheme _singleton = CustomTheme._internal();

  factory CustomTheme() {
    return _singleton;
  }

  CustomTheme._internal();

  static const Color purple = Color.fromRGBO(118, 29, 242, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color yellow = Color.fromRGBO(242, 196, 41, 1);
  static const Color lightRed = Color.fromRGBO(253, 145, 145, 1);
  static const Color red = Color.fromRGBO(255, 31, 42, 1);
  static const Color pastelGreen = Color.fromRGBO(24, 186, 150, 1);
  static const Color green = Color.fromRGBO(26, 227, 9, 1);
  static const Color lightGrey = Color.fromRGBO(185, 185, 185, 1);
  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color gradientStart = Color.fromRGBO(91, 4, 212, 1);
  static const Color gradientEnd = Color.fromRGBO(27, 1, 64, 1);

  static ThemeData get mainTheme {
    return ThemeData(
      // primaryColor: purple,
      textTheme: GoogleFonts.domineTextTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
