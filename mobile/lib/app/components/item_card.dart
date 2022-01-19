import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

class ItemCard extends StatelessWidget {
  // foodName is required, quantity by default is 0, and expireData is undefined
  // if not informed, it will take its default values
  final String productName;
  final String quantity;
  final String expireDate;

  const ItemCard(
      {Key? key,
      this.productName = "Undefined",
      this.quantity = "0",
      this.expireDate = "undefined"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle txtStyle = const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: CustomTheme.black,
    );

    return SizedBox(
      width: 200,
      height: 250,
      child: Column(
        children: [
          // White Box Background
          Container(
            width: 180,
            height: 165,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.4),
                    offset: Offset(0, 5),
                    blurRadius: 9,
                    spreadRadius: 2)
              ],
            ),

            // Image container and food info
            child: Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.topCenter,
              children: [
                // Image Container
                Positioned(
                  top: -25,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/imageAux/Arroz.jpg"),
                      ),
                      color: Colors.grey,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(120),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        )
                      ],
                    ),
                  ),
                ),

                // Food Info
                Positioned(
                  bottom: 20,
                  child: Text(
                    'Quantidade : $quantity \n Validade : $expireDate',
                    style: txtStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // Margin
          Container(height: 20),

          // Bottom Text, Food name
          Text(
            productName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
