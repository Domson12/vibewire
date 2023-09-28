import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class TrendingPage extends StatelessWidget {
  const TrendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Trending Page'),
      ),
    );
  }
}
