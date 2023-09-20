import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.grey),
      ),
      child: Text(text),
    );
  }
}
