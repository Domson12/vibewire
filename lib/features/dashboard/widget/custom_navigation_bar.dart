import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/navigation/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        StreamRoute(),
        MessageRoute(),
        NotificationRoute(),
        ProfileRoute(),
      ],
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        backgroundColor: AppColors.primary,
        onPressed: () => context.router.push(const AddPostRoute()),
        child: const Icon(Ionicons.add_outline),
      ),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          elevation: 2,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items:  [
            BottomNavigationBarItem(
              backgroundColor: AppColors.primary,
              icon: const Icon(Ionicons.home_outline),
              label: S.of(context).home,
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primary,
              icon: const Icon(Ionicons.camera_reverse_outline),
              label: S.of(context).stream,
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryLight,
              icon: const Icon(Ionicons.chatbox_outline),
              label: S.of(context).message,
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.accentLight,
              icon: const Icon(Ionicons.notifications_outline),
              label: S.of(context).notification,
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primary,
              icon: const Icon(Ionicons.person_outline),
              label: S.of(context).profile,
            ),
          ],
        );
      },
    );
  }
}
