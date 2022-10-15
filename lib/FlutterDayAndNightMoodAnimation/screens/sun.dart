import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/size_config.dart';

class Sun extends StatelessWidget {
  const Sun({
    super.key,
    required this.duration,
    required this.isFullSun,
  });

  final Duration duration;
  final bool isFullSun;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: duration,
      curve: Curves.easeInOut,
      left: getProportionateScreenWidth(30),
      bottom: getProportionateScreenWidth(-120),
      child: SvgPicture.asset('assets/FlutterDayAndNightMoodAnimation/Sun.svg'),
    );
  }
}
