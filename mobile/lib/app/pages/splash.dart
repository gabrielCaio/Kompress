import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kompress/app/utils/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Logo Svg
  final Widget _logoSvg = SvgPicture.asset("assets/logo_solid_black.svg");

  @override
  Widget build(BuildContext context) {
    // Screen Size
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        // Container Size
        width: _screenWidth,
        height: _screenHeight,

        // Linear Gradient
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

        // Page content : (Logo)
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: _screenWidth * 0.6,
                height: _screenWidth * 0.6,
                child: _logoSvg,
              ),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed("/home"),
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
