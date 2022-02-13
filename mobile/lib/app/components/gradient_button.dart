import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Function handleClick;
  final String buttonTitle;
  const GradientButton(
      {Key? key, required this.handleClick, this.buttonTitle = "Login"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handleClick(),
      child: Container(
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff830FD1), Color(0xff17BA96)]),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
