import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import '../../features/auth/auth_page.dart';
import '../../features/auth/auth_wrapper_page.dart';
import '../../features/auth/login/login_page.dart';
import '../../features/auth/main/auth_main_page.dart';
import '../../features/auth/register/register_page.dart';
import '../../features/auth/reset_password/reset_password_page.dart';
import '../../features/dashboard/add_post/add_main_post/add_main_post_page.dart';
import '../../features/dashboard/add_post/add_post_page.dart';
import '../../features/dashboard/add_post/add_story/add_story_page.dart';
import '../../features/dashboard/dashboard_page.dart';
import '../../features/dashboard/home/daily_new/daily_new_page.dart';
import '../../features/dashboard/home/discover/discover_page.dart';
import '../../features/dashboard/home/home_page.dart';
import '../../features/dashboard/home/latest/latest_page.dart';
import '../../features/dashboard/home/trending/trending_page.dart';
import '../../features/dashboard/message/message_page.dart';
import '../../features/dashboard/notification/notification_page.dart';
import '../../features/dashboard/profile/edit_profile/edit_profile_page.dart';
import '../../features/dashboard/profile/profile_page.dart';
import '../../features/dashboard/stream/stream_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
@lazySingleton
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthWrapperRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: AuthRoute.page,
              initial: true,
              children: [
                AutoRoute(page: AuthMainRoute.page, initial: true),
                AutoRoute(page: RegisterRoute.page),
                AutoRoute(page: LoginRoute.page),
                AutoRoute(page: ResetPasswordRoute.page),
              ],
            ),
            AutoRoute(
              page: DashboardRoute.page,
              children: [
                AutoRoute(page: HomeRoute.page, children: [
                  AutoRoute(page: DiscoverRoute.page, initial: true),
                  AutoRoute(page: DailyNewRoute.page),
                  AutoRoute(page: LatestRoute.page),
                  AutoRoute(page: TrendingRoute.page),
                ]),
                AutoRoute(page: StreamRoute.page),
                AutoRoute(page: MessageRoute.page),
                AutoRoute(page: NotificationRoute.page),
                AutoRoute(page: ProfileRoute.page),
              ],
            ),
          ],
        ),
        AutoRoute(page: EditProfileRoute.page),
        AutoRoute(page: AddPostRoute.page, children: [
          AutoRoute(page: AddMainPostRoute.page, initial: true),
          AutoRoute(page: AddStoryRoute.page),
        ])
      ];
}
