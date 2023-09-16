import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n.dart';
import 'add_main_post/add_main_post_page.dart';
import 'add_story/add_story_page.dart';
import 'widget/custom_tab.dart';

@RoutePage()
class AddPostPage extends StatelessWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: AppColors.grey),
          bottom: TabBar(
              indicatorColor: Colors.transparent,
              labelColor: AppColors.white,
              unselectedLabelColor: AppColors.grey,
              tabs: [
                CustomTab(text: S.of(context).add_post),
                CustomTab(text: S.of(context).add_story),
              ]),
        ),
        body: TabBarView(
          children: [
            const AddMainPostPage(),
            AddStoryPage(),
          ],
        ),
      ),
    );
  }
}
