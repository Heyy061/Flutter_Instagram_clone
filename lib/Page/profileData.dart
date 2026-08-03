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

class boxes extends StatefulWidget {
  final String name;
  final VoidCallback onClick1;
  const boxes({super.key, required this.name, required this.onClick1});

  @override
  State<boxes> createState() => _boxesState();
}

class _boxesState extends State<boxes> {
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

          onPressed: widget.onClick1,
          child: Text(
            widget.name,
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
  final VoidCallback onTap1;
  final bool isSelected;
  const myuploads({
    super.key,
    required this.ic,
    required this.onTap1,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: onTap1,
          icon: Icon(
            ic,
            color: isSelected
                ? const Color.fromARGB(179, 6, 25, 196)
                : const Color.fromARGB(231, 0, 0, 0),
          ),
          iconSize: 29,
        ),
      ],
    );
  }
}
