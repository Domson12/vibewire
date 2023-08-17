import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/navigation/app_router.dart';
import '../../core/utils/injection_container.dart';
import 'cubit/auth_cubit.dart';

@RoutePage()
class AuthWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const AuthWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AutoRouter.declarative(
            routes: (_) {
              return [
                FirebaseAuth.instance.currentUser != null
                    ? const DashboardRoute()
                    : const AuthRoute()
              ];
            },
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (_) => sl<AuthCubit>(),
      child: this,
    );
  }
}
