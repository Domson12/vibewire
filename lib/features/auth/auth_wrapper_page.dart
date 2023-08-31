import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../core/navigation/app_router.dart';


@RoutePage()
class AuthWrapperPage extends StatelessWidget {
  const AuthWrapperPage({super.key});

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
