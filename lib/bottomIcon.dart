import 'package:flutter/material.dart';

class Bottomicon1 extends StatelessWidget {
  final IconData icon1;
  const Bottomicon1({super.key, required this.icon1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Icon(icon1, size: 32)],
    );
  }
}
