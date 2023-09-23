import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/vibe_theme_Extension.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({super.key, required this.text, required this.dataText});

  final String text;
  final int dataText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Theme.of(context).xTextTheme.h1.copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.w800,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          '$dataText',
          style: Theme.of(context).xTextTheme.h2.copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}
