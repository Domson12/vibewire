import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/navigation/app_router.dart';
import '../../core/utils/injection_container.dart';
import '../dashboard/user_data/user_data_cubit.dart';

@RoutePage()
class AuthWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const AuthWrapperPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UserDataCubit>(
      create: (_) => sl<UserDataCubit>()..init(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        return WillPopScope(
          onWillPop: () async => true,
          child: AutoRouter.declarative(
            routes: (_) {
              return [
                snapshot.hasData ? const DashboardRoute() : const AuthRoute()
              ];
            },
          ),
        );
      },
    );
  }
}
