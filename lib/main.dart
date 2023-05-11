import 'package:direct_navigation/screens/first_screen.dart';
import 'package:direct_navigation/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstScreen(),
      routes: {
        // '/': (_) => const FirstScreen(),
        // SecondScreen.routeName: (_) => const SecondScreen()
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SecondScreen.routeName:
            return MaterialPageRoute(builder: (_) => const FirstScreen());
        }
      },
    );
  }
}
