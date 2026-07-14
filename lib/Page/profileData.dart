import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget {
  final int noPosts;
  final String info;

  const ProfileData({super.key, required this.noPosts, required this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              "$noPosts",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight(500)),
            ),
            Text("$info", style: TextStyle(fontSize: 16)),
          ],
        ),
        SizedBox(width: 28),
      ],
    );
  }
}
