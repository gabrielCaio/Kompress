import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

enum CardType { ok, caution, expired }

class ItemListCard extends StatelessWidget {
  final double height;
  final CardType type;
  final String productName;
  final String quantity;
  final String expireDate;
  final String measureUnity;
  final Function? onPress;
  // Send CardType.expired, CardType.ok or CardType.caution
  // for changing the color of the item on list

  const ItemListCard({
    Key? key,
    this.height = 120,
    this.type = CardType.ok,
    this.productName = "undefined",
    this.quantity = "0",
    this.expireDate = "undefined",
    this.measureUnity = "und(s)",
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getType() {
      switch (type) {
        case CardType.expired:
          return CustomTheme.red;
        case CardType.caution:
          return CustomTheme.yellow;
        default:
          return CustomTheme.green;
      }
    }

    Color borderColor = getType();

    Widget getIcon() {
      switch (type) {
        case CardType.expired:
          return Icon(Icons.error, color: borderColor, size: 40);
        case CardType.caution:
          return Icon(Icons.warning, color: borderColor, size: 40);
        default:
          return const SizedBox();
      }
    }

    DecorationImage decorationImage = const DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage("assets/imageAux/Arroz.jpg"),
    );

    return InkWell(
      onTap: () => onPress,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          children: [
            // Image Thumbnail
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                border: Border.fromBorderSide(BorderSide(color: borderColor)),
                image: decorationImage,
              ),
            ),

            // Content
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Validade: $expireDate\nQuantidade: $quantity $measureUnity",
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  getIcon(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
