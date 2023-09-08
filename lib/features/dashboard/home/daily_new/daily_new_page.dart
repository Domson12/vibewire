import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class DailyNewPage extends StatelessWidget {
  const DailyNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Daily New Page'),
      ),
    );
  }
}
