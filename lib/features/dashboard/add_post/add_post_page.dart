import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/utils/injection_container.dart';
import '../../../generated/l10n.dart';
import '../image_picker/cubit/image_picker_cubit.dart';
import '../user_data/user_data_cubit.dart';
import 'add_main_post/add_main_post_page.dart';
import 'add_main_post/cubit/add_main_cubit.dart';
import 'add_story/add_story_page.dart';
import 'add_story/cubit/add_story_cubit.dart';
import 'widget/custom_tab.dart';

@RoutePage()
class AddPostPage extends StatelessWidget implements AutoRouteWrapper {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddStoryCubit>(create: (_) => sl<AddStoryCubit>()),
        BlocProvider<ImagePickerCubit>(create: (_) => sl<ImagePickerCubit>()),
        BlocProvider<AddMainCubit>(create: (_) => sl<AddMainCubit>()),
        BlocProvider<UserDataCubit>(create: (_) => sl<UserDataCubit>()),
      ],
      child: this,
    );
  }

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
            ],
          ),
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
