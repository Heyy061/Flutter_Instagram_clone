import 'package:flutter/material.dart';
import 'package:instagram_clone/Page/profileData.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 249, 248, 247),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: 30),
            SizedBox(width: 82),
            Text("Heyy_061", style: TextStyle(fontSize: 26)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //color: Colors.amber,
              height: 150,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 48,
                    backgroundColor: Color.fromRGBO(182, 54, 163, 1),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/image/Miku.jpeg'),
                    ),
                  ),
                  SizedBox(width: 20),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Text("Heyy", style: TextStyle(fontSize: 24)),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProfileData(noPosts: 2, info: "posts"),
                            ProfileData(noPosts: 20, info: "follower"),
                            ProfileData(noPosts: 20, info: "following"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                boxes(name: "Edit Profile"),
                SizedBox(width: 20),
                boxes(name: "Shared Profile"),
              ],
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              myuploads(ic: Icons.photo_camera_outlined),
              myuploads(ic: Icons.video_camera_back_outlined),
              myuploads(ic: Icons.tag_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
