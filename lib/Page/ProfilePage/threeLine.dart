import 'package:flutter/material.dart';

class headerIcon extends StatefulWidget {
  const headerIcon({super.key});

  @override
  State<headerIcon> createState() => _headerIconState();
}

class _headerIconState extends State<headerIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings & Activity",
          style: TextStyle(fontWeight: FontWeight(450)),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 227, 227, 225),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                children: [
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("How you use Instagram"),
                  ),
                  opt(icon: Icons.favorite_border_outlined, name: 'Like'),

                  opt(icon: Icons.watch_later_outlined, name: 'Time'),
                  opt(icon: Icons.bookmark_add_outlined, name: 'Saved'),
                  opt(icon: Icons.timeline_outlined, name: 'Your Activity'),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 227, 227, 225),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Who can see your content"),
                  ),
                  opt(icon: Icons.lock_clock_outlined, name: 'Account privacy'),
                  opt(icon: Icons.person, name: 'Close Frineds'),
                  opt(icon: Icons.block, name: 'Blocked'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 227, 227, 225),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Align(alignment: Alignment.topLeft, child: Text("Login,")),

                  opt(icon: Icons.account_balance, name: 'Add Account'),
                  opt(icon: Icons.login, name: 'Log Out'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class opt extends StatelessWidget {
  final String name;
  final IconData icon;
  opt({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 45,
        width: 400,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: const Color.fromARGB(255, 242, 240, 240),
            ), //to hilight the bottom line
          ),
        ),

        // color: Colors.amberAccent,
        child: Row(
          children: [
            Icon(icon, size: 25),
            SizedBox(width: 20),
            Text(name, style: TextStyle(fontSize: 23)),
          ],
        ),
      ),
    );
  }
}
