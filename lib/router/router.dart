import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/all_products.dart';
import 'package:gorouter/pages/child_page.dart';
import 'package:gorouter/pages/home_page.dart';
import 'package:gorouter/pages/profile_page.dart';
import 'package:gorouter/pages/user_page.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",

    //error page
    errorPageBuilder: (context, state) {
      return const MaterialPage<dynamic>(
        child: Scaffold(
          body: Center(
            child: Text('Page not found 404'),
          ),
        ),
      );
    },

    routes: [
      //go to the home page
      GoRoute(
        name: "home",
        path: '/',
        builder: (context, state) {
          return const HomePage();
        },
      ),

      //go to profile page
      GoRoute(
        name: "profile",
        path: '/profile',
        builder: (context, state) {
          return const ProfilePage();
        },
        routes: [
          //go to child page
          GoRoute(
            name: "child",
            path: 'child',
            builder: (context, state) {
              return const ChildPage(); // routhe is >  /profile/child
            },
          ),
        ],
      ),

      //user page using extra parameter
      //===================================
      // GoRoute(
      //   name: "user",
      //   path: '/user',
      //   builder: (context, state) {
      //     final String name = state.extra as String;
      //     return UserPage(userName: name);
      //   },
      // ),
      //==================================

      //user page with path parameter
      GoRoute(
        name: "user",
        path: '/user/:name',
        builder: (context, state) {
          return UserPage(
            userName: state.pathParameters['name']!,
          );
        },
      ),

      //all products page
      GoRoute(
        name: "products",
        path: '/products',
        builder: (context, state) {
          return const AllProducts();
        },
      ),
    ],
  );
}
