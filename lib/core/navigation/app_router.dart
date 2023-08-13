
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
@lazySingleton
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
      ];
}