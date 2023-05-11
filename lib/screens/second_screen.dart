import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/second-screens';
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second screen"),
      ),
      body: const Center(child: Text("This is second screen body")),
    );
  }
}
