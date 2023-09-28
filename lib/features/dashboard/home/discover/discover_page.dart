import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import 'widget/stories_card.dart';


@RoutePage()
class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StoriesCard(
            username: 'Dominik Mazurkiewicz',
            avatarImage: Assets.images.human1.path,
            backgroundImage: Assets.images.human6.path,
          )
        ],
      ),
    );
  }
}
