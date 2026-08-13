import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_clone/Page/HomePage/HomePage.dart';
import 'package:instagram_clone/Page/ProfilePage/cam&gallary.dart';
import 'package:instagram_clone/Page/ProfilePage/provider.dart';

class editPage extends ConsumerStatefulWidget {
  editPage({super.key});

  @override
  ConsumerState<editPage> createState() => _editPageState();
  final List<String> proPic = [];
}

class _editPageState extends ConsumerState<editPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController BioController = TextEditingController();
  TextEditingController GenderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Edit Profile", style: TextStyle(fontWeight: FontWeight(450))),
            Spacer(),
            TextButton(
              onPressed: () async {
                ref
                    .read(profileProvider.notifier)
                    .updateProfile(
                      name1: nameController.text,
                      userName1: userNameController.text,
                      bio1: BioController.text,
                    );
              }, //updateProfile the the funx we created
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
          box(text3: "Name", x: nameController),
          SizedBox(height: 20),
          box(text3: "UserName", x: userNameController),
          SizedBox(height: 20),
          box(text3: "Bio", x: BioController),
          SizedBox(height: 20),
          box(text3: "Gender", x: GenderController), //he/him
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class box extends StatefulWidget {
  final String text3;
  final TextEditingController x;
  box({super.key, required this.text3, required this.x});

  @override
  State<box> createState() => _boxState();
}

class _boxState extends State<box> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: widget.x,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: widget.text3,
        ),
      ),
    );
  }
}
//////next day:- input [name,bio,userName,photo]here and when click done changes happened at profile page