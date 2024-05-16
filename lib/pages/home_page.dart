import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/router/route_names.dart';

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
              GoRouter.of(context).go('/profile');
            },
            child: const Text('Go to Profile'),
          ),
          ElevatedButton(
            onPressed: () {
              // GoRouter.of(context).push('/products');

              // -or- named routes

              GoRouter.of(context).goNamed(RouteNamesClass.allProducts);
            },
            child: const Text('Go to All Products'),
          ),
          ElevatedButton(
            onPressed: () {
              //using extra parameter
              // GoRouter.of(context).go('/user', extra: 'John Doe');

              // -or-

              //using path parameter
              // String name = 'Name from params';
              // GoRouter.of(context).go('/user/$name');

              // -or- named routes

              GoRouter.of(context).goNamed(RouteNamesClass.user,
                  pathParameters: {'name': 'John Doe from named route'});
            },
            child: const Text('Go to User Page'),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context)
                  .goNamed(RouteNamesClass.age, queryParameters: {'age': '25'});
            },
            child: const Text('Go to Age page with query parameter'),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push('/back');
            },
            child: const Text('Go to Back Page'),
          ),
        ],
      ),
    );
  }
}
