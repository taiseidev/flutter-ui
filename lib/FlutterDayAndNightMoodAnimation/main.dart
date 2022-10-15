import 'package:flutter/material.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter-Day-and-Night-Mood-Animation',
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
