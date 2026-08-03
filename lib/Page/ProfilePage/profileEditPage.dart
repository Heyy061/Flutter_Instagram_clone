import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone/Page/ProfilePage/cam&gallary.dart';

class editPage extends StatefulWidget {
  editPage({super.key});

  @override
  State<editPage> createState() => _editPageState();
  final List<String> proPic = [];
}

class _editPageState extends State<editPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Edit Profile", style: TextStyle(fontWeight: FontWeight(450))),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text("Done", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 140,
            // color: Colors.amberAccent,
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: const Color.fromARGB(255, 117, 157, 180),
                child: Icon(Icons.camera_alt_rounded, color: Colors.black87),
              ),
            ),
          ),
          SizedBox(height: 20),
          box(text3: "Name"),
          SizedBox(height: 20),
          box(text3: "UserName"),
          SizedBox(height: 20),
          box(text3: "Bio"),
          SizedBox(height: 20),
          box(text3: "Gender"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class box extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  final String text3;
  box({super.key, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: text3,
        ),
      ),
    );
  }
}
//////next day:- input [name,bio,userName,photo]here and when click done changes happened at profile page