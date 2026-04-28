import 'package:flutter/material.dart';
import 'main_navigation.dart';

void main() {
  runApp(const AiTeachingApp());
}

class AiTeachingApp extends StatelessWidget {
  const AiTeachingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Teaching App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainNavigation(),
    );
  }
}
