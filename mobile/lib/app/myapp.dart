import 'package:flutter/material.dart';

// Imports das paginas das aplicações
import 'package:kompress/app/pages/home.dart';
import 'package:kompress/app/pages/details.dart';
import 'package:kompress/app/pages/edit_profile.dart';
import 'package:kompress/app/pages/splash.dart';
// import 'package:kompress/app/pages/login.dart';
// import 'package:kompress/app/pages/register.dart';

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

      // This will be the first page the app will load, make changes accordingly
      initialRoute: '/splash',

      // ALl routes of the aplication
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const Home(),
        '/edit': (context) => const EditProfile(),
        '/details': (context) => const Details(),
        // Disabled routes

        // '/login': (context) => const Login(),
        // '/register': (context) => const Register(),
      },

      // Defining the home page
      home: const Home(),

      // Setting app theme
      theme: CustomTheme.mainTheme,
    );
  }
}
