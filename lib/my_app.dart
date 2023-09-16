import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:scoped_model/scoped_model.dart';

import 'core/navigation/app_router.dart';
import 'core/theme/app_theme.dart';
import 'locale_model.dart';
import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return ScopedModelDescendant<LocaleModel>(
      builder: (context, child, model) {
        return MaterialApp.router(
          locale: model.appLocal,
          theme: AppTheme.appLight,
          routerDelegate: _appRouter.delegate(),
          supportedLocales: S.delegate.supportedLocales,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routeInformationProvider: _appRouter.routeInfoProvider(),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
