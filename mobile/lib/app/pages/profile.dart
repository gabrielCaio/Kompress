import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kompress/app/components/avatar.dart';
import 'package:kompress/app/utils/theme.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    TextStyle txt = const TextStyle(
      fontSize: 16,
      decoration: TextDecoration.underline,
      color: CustomTheme.white,
    );

    double textSpace = 20;

    void handleEditPress() {
      Navigator.of(context).pushNamed("/edit");
    }

    void handleBackupPress() {
      debugPrint("Backup");
    }

    void handleLogoutPress() {
      debugPrint("Logout");
    }

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Avatar(name: "Ana Barreto", type: 1),
                Column(
                  children: [
                    GestureDetector(
                      onTap: handleEditPress,
                      child: Text(
                        "Editar Perfil",
                        style: txt,
                      ),
                    ),
                    SizedBox(height: textSpace),
                    GestureDetector(
                      onTap: handleBackupPress,
                      child: Text(
                        "Backup de dados",
                        style: txt,
                      ),
                    ),
                    SizedBox(height: textSpace),
                    GestureDetector(
                      onTap: handleLogoutPress,
                      child: Text(
                        "Sair",
                        style: txt,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
