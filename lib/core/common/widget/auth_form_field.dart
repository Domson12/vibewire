import 'package:flutter/material.dart';
import '../../theme/vibe_theme_Extension.dart';


import '../../theme/app_colors.dart';

class AuthFormField extends StatelessWidget {
  const AuthFormField({
    Key? key,
    required this.controller,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.prefixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
  return TextFormField(
  autovalidateMode: AutovalidateMode.onUserInteraction,
  controller: controller,
  validator: validator,
  obscureText: obscureText,
  style: Theme.of(context).xTextTheme.h2,
  decoration: InputDecoration(
  errorBorder: OutlineInputBorder(
  borderSide: const BorderSide(color: AppColors.indigo, width: 1.0),
  borderRadius: BorderRadius.circular(20.0),
  ),
  focusedErrorBorder: OutlineInputBorder(
  borderSide: const BorderSide(color: AppColors.indigo, width: 1.0),
  borderRadius: BorderRadius.circular(20.0),
  ),
  errorStyle: Theme.of(context).xTextTheme.h2.copyWith(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: AppColors.white,
  height: 1.5,
  ),
  hintText: hintText,
  hintStyle: Theme.of(context).xTextTheme.h2.copyWith(
  color: AppColors.grey,
  ),
  suffixIcon: suffixIcon,
  prefixIcon: prefixIcon,
  filled: true,
  fillColor: AppColors.white,
  enabledBorder: OutlineInputBorder(
  borderSide: const BorderSide(color: AppColors.indigo, width: 1.0),
  borderRadius: BorderRadius.circular(20.0),
  ),
  focusedBorder: OutlineInputBorder(
  borderSide: const BorderSide(color: AppColors.indigo, width: 1.0),
  borderRadius: BorderRadius.circular(20.0),
  ),
  ),
  );
  }
}
