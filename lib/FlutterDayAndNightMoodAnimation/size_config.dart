import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
  }
}

// 意味なし
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  return (inputHeight / screenHeight) * screenHeight;
}

// 意味なし
double getProportionateScreenWidth(double inputHeight) {
  double screenWidth = SizeConfig.screenWidth!;
  return (inputHeight / screenWidth) * screenWidth;
}

// 縦方向にスペースを追加
class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    super.key,
    this.of = 25,
  });

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(of),
    );
  }
}
