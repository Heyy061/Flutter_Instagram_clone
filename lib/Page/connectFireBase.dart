import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class connect extends StatefulWidget {
  const connect({super.key});

  @override
  State<connect> createState() => _connectState();
}

TextEditingController name = TextEditingController();
TextEditingController describe = TextEditingController();

class _connectState extends State<connect> {
  Future<void> dataBase() async {
    try {
      FirebaseFirestore.instance;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
