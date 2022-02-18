import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kompress/app/components/gradient_button.dart';
import 'package:kompress/app/utils/theme.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final Widget logo = SvgPicture.asset("assets/logo_solid_black.svg");

  void handleRegisterClick() {
    Navigator.of(context).pushNamed("/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff5B04D4),
                  Color(0xff1B0140),
                ],
              ),
            ),
          ),
          SizedBox.expand(
            child: Image.asset(
              'assets/Background.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    // Logo
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: logo,
                    ),

                    // Margin
                    const SizedBox(height: 60),

                    //  ------- Forms -----------

                    // Nome
                    const TextField(
                      style: TextStyle(color: CustomTheme.white),
                      cursorColor: CustomTheme.white,
                      decoration: InputDecoration(
                        labelText: 'Nome',
                        labelStyle: TextStyle(color: CustomTheme.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomTheme.pastelGreen, width: 3),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Email
                    const TextField(
                      style: TextStyle(color: CustomTheme.white),
                      cursorColor: CustomTheme.white,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: TextStyle(color: CustomTheme.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomTheme.pastelGreen, width: 3),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Senha
                    const TextField(
                      style: TextStyle(color: CustomTheme.white),
                      cursorColor: CustomTheme.white,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: CustomTheme.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomTheme.pastelGreen, width: 3),
                        ),
                      ),
                    ),

                    // Margin
                    const SizedBox(height: 15),

                    // Confirmar Senha
                    const TextField(
                      style: TextStyle(color: CustomTheme.white),
                      cursorColor: CustomTheme.white,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirmar senha',
                        labelStyle: TextStyle(color: CustomTheme.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomTheme.pastelGreen, width: 3),
                        ),
                      ),
                    ),

                    // Margin
                    const SizedBox(height: 80),

                    // Botao de Cadastro
                    GradientButton(
                      handleClick: handleRegisterClick,
                      buttonTitle: "Cadastro",
                    ),

                    // Margin
                    const SizedBox(height: 15),

                    // Texto de redirecionamento para /login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Já possui uma conta? ',
                          style: TextStyle(color: CustomTheme.white),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Faça login',
                            style: TextStyle(
                              color: CustomTheme.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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
}
