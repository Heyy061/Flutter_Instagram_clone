import 'package:flutter/material.dart';
import 'package:instagram_clone/Page/profileData.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> posts = [];
  List<String> reels = [];
  List<String> tagged = [];

  int selectIndex = 0;
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              myuploads(
                onTap1: () {
                  setState(() {
                    selectIndex = 0;
                  });
                },
                ic: Icons.grid_on,
              ),
              myuploads(
                onTap1: () {
                  setState(() {
                    selectIndex = 1;
                  });
                },
                ic: Icons.video_library_outlined,
              ),
              myuploads(
                onTap1: () {
                  setState(() {
                    selectIndex = 2;
                  });
                },
                ic: Icons.person_pin_outlined,
              ),
            ],
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                if (selectIndex == 0 && posts.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Upload First Post",
                          style: TextStyle(fontSize: 25),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              const Color.fromARGB(255, 62, 110, 194),
                            ),
                          ),
                          child: Text(
                            "Create",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (selectIndex == 1 && posts.isEmpty) {
                  return Center(child: Text("Upload reel"));
                } else if (selectIndex == 2 && posts.isEmpty) {
                  return Center(child: Text("Tagged posts"));
                } else {
                  return Text("Fuck off");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class myPRT extends StatefulWidget {
//   final String te;
//   final IconData cre;
//   final VoidCallback press;
//   const myPRT({super.key,required this.te, this.cre, this.press});

//   @override
//   State<myPRT> createState() => _myPRTState();
// }

// class _myPRTState extends State<myPRT> {
//   @override
//   Widget build(BuildContext context) {
//     return

//   }
// }
