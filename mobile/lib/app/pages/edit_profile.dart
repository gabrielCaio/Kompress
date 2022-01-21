import 'package:flutter/material.dart';
import 'package:kompress/app/components/confirm_button.dart';
import 'package:kompress/app/utils/theme.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.3;
    String name = "Ana Barreto";

    void handleChangePicture() {
      debugPrint("ChangePicture");
    }

    void handleConfirm() {
      debugPrint("Confirm");
    }

    void handleCancel() {
      Navigator.of(context).pop();
    }

    return Scaffold(
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => handleChangePicture(),
                  child: Container(
                    width: size,
                    height: size,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ]),
                    child: const Center(
                      child: Icon(
                        Icons.add_a_photo,
                        size: 80,
                        color: CustomTheme.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 40,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Nome",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ConfirmButton(onPress: handleCancel, isCancel: true),
                    ConfirmButton(onPress: handleConfirm),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
