import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

// ハードコーディング部分はiPhone11の高さと幅
// MediaQueryを渡してあげればいける？

// 画面の高さを比例させる？
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  return (inputHeight / 896.0) * screenHeight;
}

// 画面の幅を比例させる？
double getProportionateScreenWidth(double inputHeight) {
  double screenWidth = SizeConfig.screenWidth!;
  return (inputHeight / 414.0) * screenWidth;
}

// 縦方向にスペースを追加する場合
class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    required super.key,
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
