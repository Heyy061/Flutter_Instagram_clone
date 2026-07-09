import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  final String image1;
  final String name1;
  StatusPage({super.key, required this.image1, required this.name1});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 30,

        toolbarHeight: 70,
        title: Row(
          children: [
            CircleAvatar(
              radius: 27,
              backgroundColor: const Color.fromARGB(255, 187, 113, 214),
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.image1),
                radius: 25,
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                widget.name1,
                style: TextStyle(fontWeight: FontWeight(550), fontSize: 22),
              ),
            ),
            SizedBox(width: 120),
            Expanded(
              child: IconButton(
                onPressed: () {
                  showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(1000, 80, 0, 0),
                    items: [
                      PopupMenuItem(child: Text("Report")),
                      PopupMenuItem(child: Text("Mute")),
                    ],
                  );
                },
                icon: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(child: Image.asset(widget.image1)),
          ),

          Spacer(), // to put widget at end

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    icon: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked
                          ? Color.fromRGBO(248, 1, 1, 1)
                          : Color.fromRGBO(46, 46, 46, 1),
                    ),

                    iconSize: 36,
                  ),
                  SizedBox(width: 3),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_bubble_outline_outlined),
                    iconSize: 35,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Send Message",
                        hintStyle: TextStyle(fontWeight: FontWeight(700)),
                      ),
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
