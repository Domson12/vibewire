import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/vibe_theme_Extension.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
    required this.labelText,
    required this.controller,
     this.validator,
    this.prefixIcon,
    this.suffixIcon,
  });

  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        validator: validator,
        controller: controller,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(width: 2, color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(width: 2, color: AppColors.primary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(width: 2, color: AppColors.primary),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          hintText: labelText,
          hintStyle: Theme.of(context)
              .xTextTheme
              .body2
              .copyWith(color: AppColors.grey),
          labelStyle: Theme.of(context)
              .xTextTheme
              .body2
              .copyWith(color: AppColors.grey),
          floatingLabelStyle: Theme.of(context)
              .xTextTheme
              .body2
              .copyWith(color: AppColors.primary),
        ),
      ),
    );
  }
}
