import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class AddStoryPage extends StatelessWidget {
  const AddStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('AddStoryPage'),
      )
    );
  }
}
