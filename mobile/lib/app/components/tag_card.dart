import 'package:flutter/material.dart';
import 'package:kompress/app/utils/tag_icons.dart';
import 'package:kompress/app/utils/theme.dart';

class TagCard extends StatelessWidget {
  final double size;
  final double iconSize;
  final String title;

  const TagCard({
    Key? key,
    this.size = 150,
    this.iconSize = 40,
    this.title = "undefined",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: CustomTheme.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              offset: Offset(4, 6),
              blurRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              TagIcons.addCircle,
              size: iconSize,
              color: CustomTheme.lightGrey,
            ),
            // const SizedBox(height: 20),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: CustomTheme.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
