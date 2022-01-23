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
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  CustomTheme.gradientStart,
                  CustomTheme.gradientEnd,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
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
                const SizedBox(height: 50),
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
                const SizedBox(height: 45),
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
                const SizedBox(height: 25),
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
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
