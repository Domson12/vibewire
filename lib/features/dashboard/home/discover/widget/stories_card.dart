import 'package:flutter/material.dart';

import '../../../../../core/theme/vibe_theme_Extension.dart';
import '../../widget/stories_avatar.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({
    super.key,
    required this.avatarImage,
    required this.backgroundImage,
    required this.username,
  });

  final String avatarImage;
  final String username;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          opacity: 0.7,
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          StoriesAvatar(foregroundImage: AssetImage(avatarImage)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 5),
              child: Text(
                username,
                style: Theme.of(context).xTextTheme.h2.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
