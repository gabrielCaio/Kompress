import 'package:flutter/services.dart';
import 'package:kompress/app/myapp.dart';
import 'package:flutter/material.dart';
import 'package:kompress/app/services/shared_preferences.dart';
import 'package:kompress/app/utils/theme.dart';

Future main() async {
  // Ensuring app initializing
  WidgetsFlutterBinding.ensureInitialized();

  // Setting aplication to portrait only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Changing the navigation and status bar color to fit the app
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: CustomTheme.gradientEnd, // navigation bar color
    statusBarColor: CustomTheme.gradientStart, // status bar color
  ));

  // Initializing user preferences
  await UserPreferences.init();

  // Runing Aplication
  runApp(const MyApp());
}
