import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class StoriesAvatar extends StatelessWidget {
  const StoriesAvatar({super.key, this.foregroundImage});

  final ImageProvider? foregroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primary,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CircleAvatar(
          radius: 17,
          backgroundColor: Colors.grey,
          foregroundImage: foregroundImage,
        ),
      ),
    );
  }
}
