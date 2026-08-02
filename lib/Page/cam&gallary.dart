import 'dart:io' show File;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'
    show ImagePicker, XFile, ImageSource;

class imageVideoAccess extends StatefulWidget {
  final String text1;
  //final VoidCallback ontap2;
  const imageVideoAccess({
    super.key,
    required this.text1,
    //required this.ontap2,
  });

  @override
  State<imageVideoAccess> createState() => _imageVideoAccessState();
}

class _imageVideoAccessState extends State<imageVideoAccess> {
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;
  Future<void> PickGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  Future<void> pickFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
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
              SizedBox(width: 40),
              Text(
                widget.text1,
                style: TextStyle(fontSize: 24, color: Colors.white70),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 22),
                ),
              ),
            ],
          ),

          Expanded(
            child: Center(
              child: Row(
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
            ),
          ),
        ],
      ),
    );
  }
}
