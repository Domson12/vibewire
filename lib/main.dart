
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/navigation/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/injection_container.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);
  configureDependencies();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final AppRouter appRouter = AppRouter();


  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp.router(
      theme: AppTheme.appLight,
      routerDelegate: appRouter.delegate(),
      supportedLocales: S.delegate.supportedLocales,
      routeInformationParser: appRouter.defaultRouteParser(),
      routeInformationProvider: appRouter.routeInfoProvider(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
