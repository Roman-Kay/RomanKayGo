import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/screens/bottom_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const BottomBarScreen(),
      },
    );
  }
}
