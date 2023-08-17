import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vibewire/core/theme/vibe_theme_Extension.dart';
import '../../theme/app_colors.dart';

class AuthNavigationRow extends StatelessWidget {
  const AuthNavigationRow({
    super.key,
    required this.leftText,
    required this.rightText,
    this.onTap,
  });

  final String leftText;
  final String rightText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            leftText,
            style: Theme.of(context).xTextTheme.h2.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      rightText,
                      style: Theme.of(context).xTextTheme.h2.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Ionicons.arrow_forward,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

