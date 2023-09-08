import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import 'daily_new/daily_new_page.dart';
import 'discover/discover_page.dart';
import 'latest/latest_page.dart';
import 'trending/trending_page.dart';
import 'widget/custom_app_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    late final TextEditingController searchController = TextEditingController();

    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: CustomAppBar(
              searchController: searchController,
              profileImage: Assets.images.human1.path,
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.transparent,
                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.grey,
                tabs: [
                  Tab(text: S.of(context).trending),
                  Tab(text: S.of(context).latest),
                  Tab(text: S.of(context).discover),
                  Tab(text: S.of(context).daily_new),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              TrendingPage(),
              LatestPage(),
              DiscoverPage(),
              DailyNewPage(),
            ],
          ),
        ));
  }
}
