import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';
import '../../theme/app_colors.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.svg.logo2.svg(
      width: 200,
      height: 200,
      color: AppColors.white,
    );
  }
}
