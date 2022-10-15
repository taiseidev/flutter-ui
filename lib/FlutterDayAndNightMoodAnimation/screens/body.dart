import 'package:flutter/material.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/screens/land.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/screens/rounded_text_form_field.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/screens/sun.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/screens/tabs.dart';
import 'package:flutter_ui/FlutterDayAndNightMoodAnimation/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isFullSun = true;
  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = const [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
    ];

    var darkBgColors = const [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];

    void changeMood(int value) {
      switch (value) {
        case 1:
          setState(() {
            isFullSun = false;
          });
          break;
        default:
          setState(() {
            isFullSun = true;
          });
      }
    }

    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
      height: SizeConfig.screenHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isFullSun ? lightBgColors : darkBgColors,
        ),
      ),
      child: Stack(
        children: [
          Sun(
            duration: const Duration(seconds: 1),
            isFullSun: isFullSun,
          ),
          const Land(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Tabs(
                    onTap: changeMood,
                  ),
                  const VerticalSpacing(),
                  Text(
                    'Good Morning',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  const VerticalSpacing(of: 10),
                  const Text(
                    'Enter your Informations below',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const VerticalSpacing(of: 50),
                  const RoundedTextFormField(
                    hintText: '',
                    initialValue: 'sample@gmail.com',
                    title: 'Email',
                  ),
                  const VerticalSpacing(),
                  const RoundedTextFormField(
                    hintText: '',
                    initialValue: 'XXXXXXXX',
                    title: 'Password',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
