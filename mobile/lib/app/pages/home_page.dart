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
              'Olá Caio El Troll,',
              style: TextStyle(
                color: CustomTheme.white,
                fontSize: 17,
                height: 2,
              ),
            ),
            const Text(
              'Seja Bem Vindo(a)!',
              style: TextStyle(
                color: CustomTheme.white,
                fontSize: 23,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                Icon(
                  Icons.restore,
                  color: CustomTheme.white,
                ),
                Text(
                  ' Produtos vistos recentemente...',
                  style: TextStyle(
                    color: CustomTheme.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 210,
              child: ListView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: const [
                  ItemCard(
                      productName: 'Arroz',
                      quantity: '10',
                      expireDate: '22/10/2022'),
                  ItemCard(
                      productName: 'Arroz',
                      quantity: '10',
                      expireDate: '22/10/2022'),
                  ItemCard(
                      productName: 'Arroz',
                      quantity: '10',
                      expireDate: '22/10/2022'),
                  ItemCard(
                      productName: 'Arroz',
                      quantity: '10',
                      expireDate: '22/10/2022'),
                  ItemCard(
                      productName: 'Arroz',
                      quantity: '10',
                      expireDate: '22/10/2022'),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: const [
                Icon(
                  Icons.label_outlined,
                  color: CustomTheme.white,
                ),
                Text(
                  ' Categorias',
                  style: TextStyle(
                    color: CustomTheme.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: ListView(
                clipBehavior: Clip.none,
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
