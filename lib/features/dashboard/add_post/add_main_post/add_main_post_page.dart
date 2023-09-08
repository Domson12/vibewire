import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddMainPostPage extends StatelessWidget {
  const AddMainPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('AddMainPostPage'),
      )
    );
  }
}
