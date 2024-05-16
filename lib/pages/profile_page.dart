import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Profile Page'),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go('/');
            },
            child: const Text('Go to home'),
          ),
          //go to child page
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go('/profile/child');
            },
            child: const Text('Go to Child Page'),
          ),
        ],
      ),
    );
  }
}
