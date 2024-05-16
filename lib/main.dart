import 'package:flutter/material.dart';
import 'package:gorouter/router/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter Example',
      routerConfig: RouterClass().router,
    );
  }
}
