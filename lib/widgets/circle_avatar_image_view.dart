import 'package:flutter/material.dart';

class CircleAvatarImageView extends StatelessWidget {
  final fileName;
  const CircleAvatarImageView({
    super.key, this.fileName,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage:
        AssetImage('assets/images/$fileName'),
      ),
    );
  }
}