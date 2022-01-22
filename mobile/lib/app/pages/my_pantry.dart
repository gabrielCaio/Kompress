// ignore_for_file: deprecated_member_use

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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Meus Produtos',
                      style: TextStyle(
                        color: CustomTheme.white,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      style: const TextStyle(color: CustomTheme.black),
                      cursorColor: CustomTheme.black,
                      decoration: InputDecoration(
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
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: CustomTheme.gradientStart,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: CustomTheme.gradientStart,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
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
                        SizedBox(width: 102),
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
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 430,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: const [
                          ItemListCard(),
                          ItemListCard(),
                          ItemListCard(),
                          ItemListCard(),
                          ItemListCard(),
                          ItemListCard(),
                          ItemListCard(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              color: CustomTheme.pastelGreen,
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            constraints:
                               const BoxConstraints(maxWidth: 290.0, minHeight: 60.0,),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: const [
                                  Icon(Icons.add_circle_outline, color: CustomTheme.white,size: 35,),
                                  Text(
                                    ' Adicionar Novo Produto',
                                    style: TextStyle(
                                        color: CustomTheme.white, fontSize: 19),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
