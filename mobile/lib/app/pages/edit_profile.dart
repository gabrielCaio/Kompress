import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kompress/app/components/confirm_button.dart';
import 'package:kompress/app/services/shared_preferences.dart';
import 'package:kompress/app/utils/theme.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ImagePicker _picker = ImagePicker();
  File? image;
  String name = "";
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    name = UserPreferences.getUsername() ?? "";
    nameController.text = name;
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Size of the Avatar container
    double size = MediaQuery.of(context).size.width * 0.4;

    // Getting the picture from user gallery
    Future handleChangePicture() async {
      try {
        XFile? tmpImage = await _picker.pickImage(source: ImageSource.gallery);

        if (tmpImage == null) return;

        var imageData = File(tmpImage.path);

        setState(() {
          image = imageData;
        });
      } on PlatformException catch (err) {
        debugPrint(err.toString());
      }
    }

    // Function called when save button pressed
    Future handleConfirm() async {
      await UserPreferences.setUsername(nameController.text);

      if (image != null) {
        await UserPreferences.setImage(image!.path);
      }

      Navigator.of(context).pop();
    }

    // Function called when cancel button pressed
    void handleCancel() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          // Linear Gradient
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [CustomTheme.gradientStart, CustomTheme.gradientEnd],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),

            // Page Content
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Avatar
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
                      child: Center(
                        // Checking if image exists
                        child: image != null
                            // Avatar image
                            ? ClipOval(
                                child: SizedBox(
                                  width: size,
                                  height: size,
                                  child: Image.file(
                                    image!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            // Icon to change image
                            : const Icon(
                                Icons.add_photo_alternate,
                                size: 60,
                                color: CustomTheme.black,
                              ),
                      ),
                    ),
                  ),

                  // Name Input
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 40,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: "Nome",
                        contentPadding: EdgeInsets.only(left: 5),
                      ),
                    ),
                  ),

                  // Button Area
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
      ),
    );
  }
}
