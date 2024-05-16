import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/models/product.dart';
import 'package:gorouter/pages/age_page.dart';
import 'package:gorouter/pages/back.dart';
import 'package:gorouter/pages/child_page.dart';
import 'package:gorouter/pages/home_page.dart';
import 'package:gorouter/pages/login.dart';
import 'package:gorouter/pages/products_page.dart';
import 'package:gorouter/pages/profile_page.dart';
import 'package:gorouter/pages/single_product_page.dart';
import 'package:gorouter/pages/user_page.dart';
import 'package:gorouter/router/route_names.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    errorPageBuilder: (context, state) {
      return const MaterialPage<dynamic>(
        child: Scaffold(
          body: Center(
            child: Text("this page is not found!!"),
          ),
        ),
      );
    },

    //redirect to login page if user is not logged in
    // redirect: (context, state) {
    //   bool isUserLoggedIn = UserData.isUserLoggedIn;
    //   if (isUserLoggedIn) {
    //     return "/";
    //   } else {
    //     return "/login";
    //   }
    // },

    routes: [
      // Home Page
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) {
          return const HomePage();
        },
      ),

      //profile page
      GoRoute(
        name: RouteNamesClass.profile,
        path: "/profile",
        builder: (context, state) {
          return const ProfilePage();
        },
        routes: [
          GoRoute(
            name: "child",
            path: "child",
            builder: (context, state) {
              return const ChildPage();
            },
          )
        ],
      ),

      //user page extra parameter
      // GoRoute(
      //   path: "/user",
      //   builder: (context, state) {
      //     final name = (state.extra as Map<String, dynamic>)["name"] as String;

      //     final age = (state.extra as Map<String, dynamic>)["age"] as int;
      //     return UserPage(
      //       userName: name,
      //       userAge: age,
      //     );
      //   },
      // )

      //user page path parameter
      GoRoute(
        path: "/user/:name",
        builder: (context, state) {
          return UserPage(
            userName: state.pathParameters['name']!,
          );
        },
      ),

      GoRoute(
        path: "/age",
        name: RouteNamesClass.age,
        builder: (context, state) {
          final int age = state.uri.queryParameters['age'] == null
              ? 0
              : int.parse(state.uri.queryParameters['age']!);

          return AgePage(age: age);
        },
      ),

      //login page
      GoRoute(
        path: "/login",
        builder: (context, state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: "/back",
        builder: (context, state) {
          return const BackPage();
        },
      ),
      GoRoute(
        name: RouteNamesClass.products,
        path: "/products",
        builder: (context, state) {
          return const Productspage();
        },
      ),

      //single product page
      GoRoute(
        name: RouteNamesClass.singleProduct,
        path: "/product",
        builder: (context, state) {
          final Product product = state.extra as Product;
          return SingleProductPage(product: product);
        },
      )
    ],
  );
}
