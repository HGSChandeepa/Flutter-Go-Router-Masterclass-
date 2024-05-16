import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChildPage extends StatelessWidget {
  const ChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Child Page'),
          ),

          //home
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go('/'); // go to home
            },
            child: const Text('Go to Home'),
          ),
          //profile
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go('/profile'); // go to profile
            },
            child: const Text('Go to Profile'),
          ),
        ],
      ),
    );
  }
}
