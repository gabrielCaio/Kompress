import 'package:flutter/material.dart';
import 'package:kompress/app/components/item_list_card.dart';
import 'package:kompress/app/utils/theme.dart';

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

    InputDecoration fieldDecor = InputDecoration(
      filled: true,
      fillColor: CustomTheme.white,
      prefixIcon: const Icon(
        Icons.search,
        color: CustomTheme.lightGrey,
      ),
      labelText: ' Pesquisar ...',
      hintText: 'Exemplo: Arroz',
      hintStyle: const TextStyle(color: CustomTheme.lightGrey),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: const TextStyle(
        color: CustomTheme.lightGrey,
      ),
      contentPadding: const EdgeInsets.all(0),
      border: CustomTheme.searchBarStyle,
    );

    // Lembrar de passar o id do item para poder mostrar melhor *******
    void handleItemPress() {
      // debugPrint("pressionou");
      Navigator.of(context).pushNamed("/details");
    }

    void handleAddNewProduct() {
      debugPrint("New product");
    }

    void handleTagList() {
      debugPrint("Handle Tags");
    }

    void handleFilterList() {
      debugPrint("Handle Filter");
    }

    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          // Estilo do gradiente
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

          // Conteudo da pagina
          child: Column(
            children: [
              // Margin inicial
              const SizedBox(height: 20),

              // Titulo da pagina
              const Text("Meus Produtos"),

              // Margin
              const SizedBox(height: 20),

              // Barra de pesquisa
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Theme(
                  data: ThemeData(
                    inputDecorationTheme: const InputDecorationTheme(),
                  ),
                  child: TextField(decoration: fieldDecor),
                ),
              ),

              // Margin
              const SizedBox(height: 20),

              // Ordenar e categorias
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Ordenar
                  InkWell(
                    onTap: handleFilterList,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.filter_list,
                          color: CustomTheme.white,
                        ),
                        Text(
                          ' Ordenar por ...',
                          style: TextStyle(
                            color: CustomTheme.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Categorias
                  InkWell(
                    onTap: handleTagList,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.label_outlined,
                          color: CustomTheme.white,
                        ),
                        Text(
                          ' Categorias ...',
                          style: TextStyle(
                            color: CustomTheme.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Margin
              const SizedBox(height: 20),

              // Scroll de produtos (ListCard)
              Flexible(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) => ItemListCard(
                    onPress: handleItemPress,
                    type: CardType.ok,
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                ),
              ),

              // Margin
              const SizedBox(height: 25),

              // Botao do Capiroto
              InkWell(
                onTap: handleAddNewProduct,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: CustomTheme.pastelGreen,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add_circle_outline,
                        color: CustomTheme.white,
                        size: 35,
                      ),
                      Text(
                        ' Adicionar Novo Produto',
                        style:
                            TextStyle(color: CustomTheme.white, fontSize: 19),
                      ),
                    ],
                  ),
                ),
              ),

              // Fim da Coluna
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
