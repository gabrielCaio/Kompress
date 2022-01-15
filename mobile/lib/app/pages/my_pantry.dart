import 'package:flutter/material.dart';

class MyPantry extends StatefulWidget {
  const MyPantry({Key? key}) : super(key: key);

  @override
  State<MyPantry> createState() => _MyPantryState();
}

class _MyPantryState extends State<MyPantry>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Scaffold(
      body: Center(
        child: Text("MyPantry"),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
