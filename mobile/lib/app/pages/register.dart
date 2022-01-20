// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
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
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Image.asset('assets/logo_solid_black.png'),
                      SizedBox(height: 60),
                      TextField(
                        style: TextStyle(color: CustomTheme.white),
                        cursorColor: CustomTheme.white,
                        decoration: InputDecoration(
                          labelText: 'Nome',
                          labelStyle: TextStyle(color: CustomTheme.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: CustomTheme.pastelGreen, width: 3),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        style: TextStyle(color: CustomTheme.white),
                        cursorColor: CustomTheme.white,
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          labelStyle: TextStyle(color: CustomTheme.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: CustomTheme.pastelGreen, width: 3),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        style: TextStyle(color: CustomTheme.white),
                        cursorColor: CustomTheme.white,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(color: CustomTheme.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: CustomTheme.pastelGreen, width: 3),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        style: TextStyle(color: CustomTheme.white),
                        cursorColor: CustomTheme.white,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirmar senha',
                          labelStyle: TextStyle(color: CustomTheme.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: CustomTheme.pastelGreen, width: 3),
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                      SizedBox(
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: const [
                                    Color(0xff830FD1),
                                    Color(0xff17BA96)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 320.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'Cadastrar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: CustomTheme.white, fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
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
      ),
    );
  }
}
