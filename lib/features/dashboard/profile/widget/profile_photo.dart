import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key, required this.profileImage});

  final String profileImage;

  @override
  Widget build(BuildContext context) {
    final defaultImage = Assets.images.profileImage.path;

    final imageToShow = profileImage.isNotEmpty
        ? NetworkImage(profileImage)
        : AssetImage(defaultImage);

    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
      backgroundImage: imageToShow as ImageProvider,
    );
  }
}
