import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

class Avatar extends StatefulWidget {
  final String name;
  final int type;
  // Type 0 for AvatarWithoutImage
  // Type 1 for AvatarWithImage
  // Type 2 for EditAvatar

  const Avatar({Key? key, required this.name, this.type = 0}) : super(key: key);

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.type == 1
            ? const AvatarWithImage()
            : widget.type == 2
                ? const EditAvatar()
                : const AvatarWithoutImage(),
        const SizedBox(height: 20),
        Text(
          widget.name,
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
  const AvatarWithImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          image:
              const DecorationImage(image: AssetImage("assets/background.png")),
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
  const AvatarWithoutImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.4,
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

class EditAvatar extends StatelessWidget {
  const EditAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.4,
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
