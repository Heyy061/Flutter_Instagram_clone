import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Page/HomePage.dart';

class connect extends StatefulWidget {
  const connect({super.key});

  @override
  State<connect> createState() => _connectState();
}

TextEditingController nameDb = TextEditingController();
TextEditingController describeDb = TextEditingController();
TextEditingController postedDb = TextEditingController();

class _connectState extends State<connect> {
  Future<void> dataBase() async {
    try {
      FirebaseFirestore.instance.collection("user").add({
    "name":nameDb,
    "describe":describeDb,
   // "post":
    "postedAt":DateTime.now(),
      });
    } catch (e) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
    );
  }
}
