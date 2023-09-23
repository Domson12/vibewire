import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key, required this.profileImage});

  final String profileImage;


  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
      backgroundImage: NetworkImage(profileImage),
    );
  }
}
