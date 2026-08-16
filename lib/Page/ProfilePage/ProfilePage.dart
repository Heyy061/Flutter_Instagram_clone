import 'dart:io' show File;

import 'package:flutter/material.dart';
import 'package:instagram_clone/Page/ProfilePage/cam&gallary.dart';
import 'package:instagram_clone/Page/ProfilePage/profileData.dart';
import 'package:instagram_clone/Page/ProfilePage/profileEditPage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'profileEditPage.dart' show editPage;
import 'provider.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  List<String> post = [];
  List<String> reels = [];
  List<String> tagged = [];

  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(profileProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 249, 248, 247),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return imageVideoAccess(text1: "New Upload", post1: post);
                    },
                  ),
                );
              },
              icon: Icon(Icons.add),
              iconSize: 30,
            ),
            SizedBox(width: 82),
            Text(profile['UserName'] ?? "", style: TextStyle(fontSize: 26)),
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
                      backgroundImage: AssetImage(profile['ProfileImage']),
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
                            profile['Name'] ?? "",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProfileData(noPosts: post.length, info: "posts"),
                            ProfileData(
                              noPosts: post.length * 20,
                              info: "follower",
                            ),
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
                boxes(
                  name: "Edit Profile",
                  onClick1: () async {
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return editPage();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(width: 20),
                boxes(
                  name: "Shared Profile",
                  onClick1: () {
                    editPage();
                  },
                ),
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
                isSelected: selectIndex == 0,
              ),
              myuploads(
                onTap1: () {
                  setState(() {
                    selectIndex = 1;
                  });
                },
                ic: Icons.video_library_outlined,
                isSelected: selectIndex == 1,
              ),

              myuploads(
                onTap1: () {
                  setState(() {
                    selectIndex = 2;
                  });
                },
                ic: Icons.person_pin_outlined,
                isSelected: selectIndex == 2,
              ),
            ],
          ),

          Expanded(
            child: Builder(
              builder: (context) {
                if (selectIndex == 0) {
                  if (post.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Upload First Post",
                            style: TextStyle(fontSize: 25),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              await Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return imageVideoAccess(
                                      text1: "New Post",
                                      post1: post,
                                    );
                                  },
                                ),
                              );
                              setState(() {});
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                const Color.fromARGB(255, 62, 110, 194),
                              ),
                            ),
                            child: Text(
                              "Upload",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return GridView.builder(
                      itemCount: post.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 3,
                            crossAxisCount: 3,
                          ),
                      itemBuilder: (context, index) {
                        return Image.file(File(post[index]), fit: BoxFit.cover);
                      },
                    );
                  }

                  ////////////////////////////////////////////////////////////
                } else if (selectIndex == 1) {
                  if (reels.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Upload First Reel",
                            style: TextStyle(fontSize: 25),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return imageVideoAccess(
                                      text1: "New Reel",
                                      post1: reels,
                                    );
                                  },
                                ),
                              );
                              setState(() {});
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                const Color.fromARGB(255, 62, 110, 194),
                              ),
                            ),
                            child: Text(
                              "Upload",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return GridView.builder(
                      itemCount: 3,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                      itemBuilder: (context, index) {
                        return Image.file(File(post[index]), fit: BoxFit.cover);
                      },
                    );
                  }

                  ///////////////////////////////////////////////////////////
                } else if (selectIndex == 2) {
                  return Center(child: Text("Tagged posts"));
                } else {
                  return Text("error");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
