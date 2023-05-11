import 'package:direct_navigation/screens/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  void gotoSecondScreen(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (context) => const SecondScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () => gotoSecondScreen(context),
              child: const Text("Go to second screen"))),
    );
  }
}
