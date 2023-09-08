import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/vibe_theme_Extension.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: S.of(context).search,
          hintStyle: Theme.of(context).xTextTheme.h2.copyWith(
            color: AppColors.grey,
          ),
          prefixIcon: const Icon(Icons.search),
          fillColor: AppColors.grey,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
