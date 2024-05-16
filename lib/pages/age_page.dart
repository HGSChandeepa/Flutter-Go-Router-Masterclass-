import 'package:flutter/material.dart';

class AgePage extends StatelessWidget {
  final int age;
  const AgePage({super.key, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Age: $age'),
      ),
    );
  }
}
