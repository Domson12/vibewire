import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import 'widget/Custom_navigation_bar.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomNavigationBar();
  }
}
