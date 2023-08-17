import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import '../../features/auth/auth_page.dart';
import '../../features/auth/auth_wrapper_page.dart';
import '../../features/auth/login/login_page.dart';
import '../../features/auth/register/register_page.dart';
import '../../features/dashboard/dashboard_page.dart';
import '../../features/main/main_page.dart';

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
                AutoRoute(page: RegisterRoute.page, initial: true),
                AutoRoute(page: LoginRoute.page),
              ],
            ),
            AutoRoute(
              page: DashboardRoute.page,
              children: [
                AutoRoute(page: MainRoute.page, initial: true),
              ],
            ),
          ],
        ),
      ];
}
