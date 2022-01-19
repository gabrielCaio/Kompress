import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

class ConfirmButton extends StatelessWidget {
  final bool isCancel;
  final Function onPress;
  final double width;
  final double height;
  const ConfirmButton({
    Key? key,
    this.isCancel = false,
    required this.onPress,
    this.width = 150,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgc = isCancel ? CustomTheme.red : CustomTheme.green;

    return InkWell(
      onTap: () => onPress(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: bgc,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: CustomTheme.black),
        ),
        child: Center(
            child: Text(
          isCancel ? "Cancelar" : "Salvar",
          style: const TextStyle(color: CustomTheme.white),
        )),
      ),
    );
  }
}
