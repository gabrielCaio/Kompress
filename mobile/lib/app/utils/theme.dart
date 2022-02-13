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
      primaryColor: purple,
      hintColor: white,
      textTheme: TextTheme(
        headline1: GoogleFonts.domine(color: white),
        headline2: GoogleFonts.domine(color: white),
        bodyText1: GoogleFonts.domine(color: white),
        bodyText2: GoogleFonts.domine(color: white),
        subtitle1: GoogleFonts.domine(color: white),
        subtitle2: GoogleFonts.domine(color: white),
        caption: GoogleFonts.domine(color: white),
        button: GoogleFonts.domine(color: white),
        overline: GoogleFonts.domine(color: white),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 18, color: white),
        errorBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: lightRed)),
        border:
            UnderlineInputBorder(borderSide: BorderSide(color: pastelGreen)),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: pastelGreen)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: pastelGreen)),
        disabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: pastelGreen)),
      ),
    );
  }
}
