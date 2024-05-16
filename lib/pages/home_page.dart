import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Home Page'),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push('/profile');
            },
            child: const Text('Go to Profile'),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push('/products');
            },
            child: const Text('Go to All Products'),
          ),
          ElevatedButton(
            onPressed: () {
              //using extra parameter
              // GoRouter.of(context).go('/user', extra: 'John Doe');

              // -or-

              //using path parameter
              String name = 'Name from params';
              GoRouter.of(context).go('/user/$name');
            },
            child: const Text('Go to User Page'),
          ),
        ],
      ),
    );
  }
}
