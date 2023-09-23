import 'package:flutter/material.dart';

import '../../../../core/common/widget/app_elevated_button.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/vibe_theme_Extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../generated/l10n.dart';
import 'profile_data.dart';
import 'profile_photo.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.profileImage,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.postsNumber,
    required this.followersNumber,
    required this.likesNumber,
    required this.buttonText,
    required this.onPressed,
    required this.onTapIcon,
  });

  final String profileImage;
  final String firstName;
  final String bio;
  final String lastName;
  final String buttonText;
  final String postsNumber;
  final String followersNumber;
  final String likesNumber;
  final VoidCallback onPressed;
  final VoidCallback onTapIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfilePhoto(profileImage: profileImage),
            const SizedBox(height: 16),
            Text(
              '$firstName $lastName',
              style: Theme.of(context).xTextTheme.h1.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppElevatedButton(
                  foregroundColor: AppColors.white,
                  backgroundColor: AppColors.primary,
                  onPressed: onPressed,
                  child: Text(buttonText),
                ),
                const SizedBox(width: 8),
                Material(
                  child: InkWell(
                    onTap: onTapIcon,
                    child: const Icon(
                      FontAwesomeIcons.solidPenToSquare,
                      color: AppColors.grey,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            const Divider(
              color: AppColors.greyLight,
              thickness: 1,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileData(text: S.of(context).posts, dataText: postsNumber),
                  ProfileData(
                      text: S.of(context).followers, dataText: followersNumber),
                  ProfileData(text: S.of(context).likes, dataText: likesNumber),
                ],
              ),
            ),
            const Divider(
              color: AppColors.greyLight,
              thickness: 1,
              height: 1,
            ),
            const SizedBox(height: 16),
            Text(
              bio,
              style: Theme.of(context).xTextTheme.h2.copyWith(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
