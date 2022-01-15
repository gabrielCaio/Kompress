import 'package:flutter/material.dart';

// Imports das paginas das aplicações
import 'package:kompress/app/pages/home.dart';
import 'package:kompress/app/pages/login.dart';
import 'package:kompress/app/pages/my_pantry.dart';
import 'package:kompress/app/pages/notifications.dart';
import 'package:kompress/app/pages/profile.dart';
import 'package:kompress/app/pages/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Tirar aquela faixa de debug que fica quando roda em desenvolvimento
      debugShowCheckedModeBanner: false,
      title: "Kompress",
      // Essa propriedade diz qual pagina vai ser a primeira a ser carregada
      // ao iniciar a aplicação (Por enquanto esta a de login)
      initialRoute: '/home',
      // Aqui ficam todas as paginas da aplicação, a medida que forem adicionadas
      // atualizar essa propriedade para poder navegar entre as paginas segue ex:
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
        '/mypantry': (context) => const MyPantry(),
        '/notifications': (context) => const Notifications(),
        '/profile': (context) => const Profile(),
      },
      home: const Home(),
    );
  }
}
