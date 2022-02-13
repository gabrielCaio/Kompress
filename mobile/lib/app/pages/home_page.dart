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
      body: SizedBox.expand(
        // Gradient Background
        child: Container(
          padding: const EdgeInsets.only(left: 10),
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
          child: ListView(
            children: [
              // Margin inicial
              const SizedBox(height: 10),

              // Titulo, Mensagem de introdução
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

              // Margin
              const SizedBox(height: 50),

              // Texto Vistos Recentemente
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

              // Margin
              const SizedBox(height: 45),

              // Scroll de produtos recentes
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

              // margin
              const SizedBox(height: 50),

              // Texto Categorias
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

              // Margin
              const SizedBox(height: 25),

              // Scroll de categorias
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

              // Margin final
              const SizedBox(height: 20),

              // Fim do children
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
