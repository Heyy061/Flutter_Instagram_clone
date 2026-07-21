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

class boxes extends StatelessWidget {
  final String name;
  const boxes({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 205, 209, 215),
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      child: Center(
        child: TextButton(
          style: ButtonStyle(
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
          ),

          onPressed: () {},
          child: Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight(500),
              color: const Color.fromARGB(209, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}

class myuploads extends StatelessWidget {
  final IconData ic;
  const myuploads({super.key, required this.ic});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [IconButton(onPressed: () {}, icon: Icon(ic), iconSize: 30)],
    );
  }
}
