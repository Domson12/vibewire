import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../features/auth/auth_page.dart';
import '../../features/auth/auth_wrapper_page.dart';
import '../../features/auth/login/login_page.dart';
import '../../features/auth/main/auth_main_page.dart';
import '../../features/auth/register/register_page.dart';
import '../../features/dashboard/dashboard_page.dart';
import '../../features/dashboard/home/daily_new/daily_new_page.dart';
import '../../features/dashboard/home/discover/discover_page.dart';
import '../../features/dashboard/home/home_page.dart';
import '../../features/dashboard/home/latest/latest_page.dart';
import '../../features/dashboard/home/trending/trending_page.dart';
import '../../features/dashboard/message/message_page.dart';
import '../../features/dashboard/notification/notification_page.dart';
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
              ],
            ),
            AutoRoute(
              page: DashboardRoute.page,
              children: [
                AutoRoute(
                  page: HomeRoute.page,
                  initial: true,
                  children: [
                    AutoRoute(page: TrendingRoute.page),
                    AutoRoute(page: LatestRoute.page),
                    AutoRoute(page: DailyNewRoute.page),
                    AutoRoute(page: DiscoverRoute.page),
                  ],
                ),
                AutoRoute(page: StreamRoute.page),
                AutoRoute(page: MessageRoute.page),
                AutoRoute(page: NotificationRoute.page),
                AutoRoute(page: ProfileRoute.page),
              ],
            ),
          ],
        ),
      ];
}
