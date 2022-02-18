import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kompress/app/services/shared_preferences.dart';
import 'package:kompress/app/utils/theme.dart';

class Avatar extends StatefulWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  File? image;
  String name = "";

  @override
  void initState() {
    super.initState();
    // Getting username from sp
    name = UserPreferences.getUsername() ?? "";

    // Getting image from sp
    String path = UserPreferences.getImage() ?? "";
    if (path != "") {
      File tmpFile = File(path);
      image = tmpFile;
    }
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.4;

    return Column(
      children: [
        // Avatar image
        image != null
            ? AvatarWithImage(size: size, image: image!)
            : AvatarWithoutImage(size: size),

        // Margin
        const SizedBox(height: 20),

        // Username
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class AvatarWithImage extends StatelessWidget {
  final double size;
  final File image;

  const AvatarWithImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: FileImage(image),
            fit: BoxFit.cover,
          ),
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
    );
  }
}

class AvatarWithoutImage extends StatelessWidget {
  final double size;
  const AvatarWithoutImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Icons.person,
          size: 80,
          color: CustomTheme.black,
        ),
      ),
    );
  }
}
