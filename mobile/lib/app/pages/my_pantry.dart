import 'package:flutter/material.dart';

class MyPantry extends StatefulWidget {
  const MyPantry({Key? key}) : super(key: key);

  @override
  State<MyPantry> createState() => _MyPantryState();
}

class _MyPantryState extends State<MyPantry> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("MyPantry"),
      ),
    );
  }
}
