import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../theme/app_colors.dart';
import '../../theme/vibe_theme_Extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthSocialRow extends StatelessWidget {
  final String text;
  final VoidCallback? onTapGoogle;
  final VoidCallback? onTapFacebook;

  const AuthSocialRow({
    Key? key,
    required this.text,
    this.onTapGoogle,
    this.onTapFacebook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          S.of(context).auth_social_text(text),
          style: Theme.of(context).xTextTheme.body1,
        ),
        const SizedBox(width: 16),
        Row(
          children: [
            IconButton(
              onPressed: onTapFacebook,
              icon: const FaIcon(
                FontAwesomeIcons.facebookF,
                color: AppColors.white,
              ),
            ),
            IconButton(
              onPressed: onTapGoogle,
              icon: const FaIcon(
                FontAwesomeIcons.google,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
