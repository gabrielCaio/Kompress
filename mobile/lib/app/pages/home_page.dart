import 'package:flutter/material.dart';
import 'package:kompress/app/components/avatar.dart';
import 'package:kompress/app/components/confirm_button.dart';
import 'package:kompress/app/components/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("HomePage"),
            ItemCard(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
