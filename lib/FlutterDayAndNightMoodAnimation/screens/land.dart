import 'package:flutter/material.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/size_config.dart';

class Land extends StatelessWidget {
  const Land({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: getProportionateScreenWidth(-65),
      left: 0,
      right: 0,
      child: Image.asset(
        'assets/FlutterDayAndNightMoodAnimation/land_tree_light.png',
        height: getProportionateScreenWidth(430),
        // アスペクト比を保ったまま
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
