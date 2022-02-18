import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kompress/app/components/avatar.dart';
import 'package:kompress/app/utils/theme.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    TextStyle txt = const TextStyle(
      fontSize: 16,
      decoration: TextDecoration.underline,
      color: CustomTheme.white,
    );

    // double textSpace = 20;

    void handleEditPress() {
      Navigator.of(context).pushNamed("/edit");
    }

    // void handleBackupPress() {
    //   debugPrint("Backup");
    // }

    // void handleLogoutPress() {
    //   debugPrint("Logout");
    // }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [CustomTheme.gradientStart, CustomTheme.gradientEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Avatar Image
                const Avatar(),

                // Botoes de acoes da pagina
                Column(
                  children: [
                    // Editar perfil
                    GestureDetector(
                      onTap: handleEditPress,
                      child: Text(
                        "Editar Perfil",
                        style: txt,
                      ),
                    ),

                    // margin
                    // SizedBox(height: textSpace),

                    // // Backup de dados
                    // GestureDetector(
                    //   onTap: handleBackupPress,
                    //   child: Text(
                    //     "Backup de dados",
                    //     style: txt,
                    //   ),
                    // ),

                    // // Margin
                    // SizedBox(height: textSpace),

                    // // Sair
                    // GestureDetector(
                    //   onTap: handleLogoutPress,
                    //   child: Text(
                    //     "Sair",
                    //     style: txt,
                    //   ),
                    // ),
                    // Fim children
                  ],
                  // Fim Coluna
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
