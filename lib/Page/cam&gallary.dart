import 'dart:io' show File;

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'
    show ImagePicker, XFile, ImageSource;

class imageVideoAccess extends StatefulWidget {
  final String text1;
  final List<String> post1;
  // final List<String> reels1;

  const imageVideoAccess({
    super.key,
    required this.text1,
    required this.post1,
    //  required this.reels1,
  });

  @override
  State<imageVideoAccess> createState() => _imageVideoAccessState();
}

class _imageVideoAccessState extends State<imageVideoAccess> {
  final ImagePicker _open =
      ImagePicker(); //let u app access the phone gallary and camera
  File?
  selectedImage; //store a file/image/video in a varible named selectedImage

  Future<void> PickGallery() async {
    final XFile? image1 = await _open.pickImage(
      source: ImageSource.gallery,
    ); //XFile is a class
    if (image1 != null) {
      setState(() {
        selectedImage = File(image1.path);
      });
    }
  }

  Future<void> pickFromCamera() async {
    final XFile? image2 = await _open.pickImage(source: ImageSource.camera);
    if (image2 != null) {
      setState(() {
        selectedImage = File(image2.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close, size: 38),
              ),
              SizedBox(width: 50),
              Text(
                widget.text1,
                style: TextStyle(fontSize: 24, color: Colors.white70),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  if (selectedImage != null) {
                    widget.post1.add(
                      selectedImage!.path,
                    ); // bc selectedImage is not a string is is File/XFile
                  }
                  Navigator.pop(context);
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 22),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          DottedBorder(
            color: const Color.fromARGB(221, 255, 255, 255),
            child: Container(
              width: 380,
              height: 350,
              child: selectedImage != null
                  ? Image.file(selectedImage!, fit: BoxFit.cover)
                  : Center(child: Text("NO image selected")),
            ),
          ),

          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  PickGallery();
                },
                child: Icon(Icons.photo, size: 25),
              ),
              ElevatedButton(
                onPressed: () {
                  pickFromCamera();
                },
                child: Icon(Icons.camera, size: 25),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
