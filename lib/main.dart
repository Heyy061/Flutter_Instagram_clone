import 'package:flutter/material.dart';
import 'package:instagram_clone/screenPage.dart' show ScreenPage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    home: ScreenPage(),
    );

  }
}
