import 'package:flutter/services.dart';
import 'package:kompress/app/myapp.dart';
import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

// Aplicação sendo importada do arquivo MyApp
// Manter Este arquivo do jeito que está

void main() {
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: CustomTheme.gradientEnd, // navigation bar color
    statusBarColor: CustomTheme.gradientStart, // status bar color
  ));
  runApp(const MyApp());
}
