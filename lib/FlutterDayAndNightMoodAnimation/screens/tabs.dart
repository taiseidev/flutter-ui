import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    super.key,
    required this.onTap,
  });

  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white24,
      ),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
          // タブのスタイルを指定
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          indicatorColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          onTap: onTap,
          tabs: const [
            Tab(
              text: 'Morning Login',
            ),
            Tab(
              text: 'Night Login',
            )
          ],
        ),
      ),
    );
  }
}
