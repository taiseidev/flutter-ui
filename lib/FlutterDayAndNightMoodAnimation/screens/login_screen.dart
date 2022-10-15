import 'package:flutter/material.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/screens/body.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/size_config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // レスポンシブ対応
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
