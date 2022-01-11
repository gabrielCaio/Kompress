import 'package:flutter/material.dart';

// Imports das paginas das aplicações
import 'package:mobile/app/pages/login.dart';
import 'package:mobile/app/pages/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Tirar aquela faixa de debug que fica quando roda em desenvolvimeno
      debugShowCheckedModeBanner: false,
      title: "Kompress",
      // Essa propriedade diz qual pagina vai ser a primeira a ser carregada
      // ao iniciar a aplicação (Por enquanto esta a de login)
      initialRoute: '/login',
      // Aqui ficam todas as paginas da aplicação, a medida que forem adicionadas
      // atualizar essa propriedade para poder navegar entre as paginas segue ex:
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
      },
    );
  }
}
