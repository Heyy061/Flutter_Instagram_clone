import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Page/HomePage.dart' show HomePage;
import 'Page/ProfilePage.dart' show ProfilePage;
import 'Page/SearchPage.dart' show SearchPage;

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  final List<Widget> pages = [HomePage(), SearchPage(), ProfilePage()];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],

      /////////////////////////////////////////////////////////////
      bottomNavigationBar: GNav(
        // selectedItemColor: const Color.fromARGB(255, 220, 120, 187),
        iconSize: 34,
        gap: 1,
        selectedIndex: currentPage,
        onTabChange: (index) {
          setState(() {
            currentPage = index;
          });
        },
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.search, text: 'Search'),
          GButton(icon: Icons.person, text: 'Profile'),
        ],
      ),
    );
  }
}
