import 'package:flutter/material.dart';
import 'package:instagram_clone/Page/profileData.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 202, 116, 31),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: 30),
            SizedBox(width: 82),
            Text("Heyy_061"),
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
              color: Colors.amber,
              height: 170,
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
                          child: Text(
                            "its_Heyy",
                            style: TextStyle(fontSize: 24),
                          ),
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
        ],
      ),
    );
  }
}
