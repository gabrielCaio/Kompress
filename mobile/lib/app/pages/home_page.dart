import 'package:flutter/material.dart';
import 'package:kompress/app/components/item_card.dart';
import 'package:kompress/app/components/tag_card.dart';
import 'package:kompress/app/utils/theme.dart';

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
      backgroundColor: CustomTheme.gradientEnd,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Olá Welton Santos,',
              style: TextStyle(
                color: CustomTheme.white,
                fontSize: 15,
                height: 2,
              ),
            ),
            const Text(
              'Seja Bem Vindo(a)!',
              style: TextStyle(
                color: CustomTheme.white,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 25),
            const ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'Produtos vistos recentemente...',
                style: TextStyle(color: CustomTheme.white),
              ),
              minLeadingWidth: 0,
              leading: Icon(
                Icons.restore,
                color: CustomTheme.white,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 205,
              child: ListView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: const [
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'Categorias',
                style: TextStyle(color: CustomTheme.white),
              ),
              minLeadingWidth: 0,
              leading: Icon(
                Icons.label_outlined,
                color: CustomTheme.white,
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  TagCard(),
                  TagCard(),
                  TagCard(),
                  TagCard(),
                  TagCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
