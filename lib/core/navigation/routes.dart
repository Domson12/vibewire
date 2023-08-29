
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/login/login_page.dart';
import '../../features/auth/register/register_page.dart';
import '../../features/initial/initial_page.dart';
import '../../features/main/main_page.dart';

class Routes {
  static final goRouter = GoRouter(
    initialLocation: initial,
    errorPageBuilder: (state, context) {
      return const MaterialPage(child: Center(child: Text('Route not found')));
    },
    routes: [
      GoRoute(
        path: initial,
        pageBuilder: (context, state) => MaterialPage(
          child: InitialPage(),
        ),
      ),
      GoRoute(
        path: register,
        pageBuilder: (context, state) => MaterialPage(
          child: RegisterPage(),
        ),
      ),
      GoRoute(
        path: login,
        pageBuilder: (context, state) => MaterialPage(
          child: LoginPage(),
        ),
      ),
      GoRoute(
        path: main,
        pageBuilder: (context, state) => const MaterialPage(
          child: MainPage(),
        ),
      ),
    ],
  );

  static const String initial = '/initial';
  static const String register = '/register';
  static const String login = '/login';
  static const String main = '/main';
}
