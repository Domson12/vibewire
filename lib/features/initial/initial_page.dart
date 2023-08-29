import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/routes.dart';
import '../../core/utils/injection_container.dart';


class InitialPage extends StatelessWidget {
  InitialPage({super.key});

  final FirebaseAuth _firebaseAuth = sl<FirebaseAuth>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _firebaseAuth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            Future.delayed(Duration.zero, () {
              context.go(Routes.main);
            });
          } else {
            Future.delayed(Duration.zero, () {
              context.go(Routes.register);
            });
          }
        }
        return const CircularProgressIndicator();
      },
    );
  }
}