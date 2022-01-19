import 'package:flutter/material.dart';

// Imports das paginas das aplicações
import 'package:kompress/app/pages/home.dart';
import 'package:kompress/app/pages/login.dart';
import 'package:kompress/app/pages/my_pantry.dart';
import 'package:kompress/app/pages/notifications.dart';
import 'package:kompress/app/pages/profile.dart';
import 'package:kompress/app/pages/register.dart';

// Theme import
import 'package:kompress/app/utils/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Removing debug banner
      debugShowCheckedModeBanner: false,
      // App title
      title: "Kompress",
      // This will be the firts page the app will load, make changes accordingly
      initialRoute: '/home',
      // ALl routes of the aplication
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
        '/mypantry': (context) => const MyPantry(),
        '/notifications': (context) => const Notifications(),
        '/profile': (context) => const Profile(),
      },
      // Defining the home page, ### May be not necessary ## TOREVIEW
      home: const Home(),
      // Setting app theme
      theme: CustomTheme.mainTheme,
    );
  }
}
