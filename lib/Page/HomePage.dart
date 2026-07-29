import 'package:flutter/material.dart';
import 'package:instagram_clone/Page/homeData.dart';
import 'package:instagram_clone/statusPage.dart' show StatusPage;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<String> image = [
  '',
  'assets/image/mauvika.webp',
  'assets/image/citlai.webp',
  'assets/image/Keqing1.webp',
  'assets/image/Bina.webp',
  'assets/image/Hutao1.jpg',
];
final List<String> name = [
  'Your story',
  'Mauvika',
  'Citlali',
  'Keqing',
  'Colombina',
  'Hutao',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: 27),

            Text(
              "Instagram",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight(400),
                fontFamily: 'Luckyfield',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              //color: Colors.amber,
              border: Border(
                bottom: BorderSide(
                  color: const Color.fromARGB(255, 230, 229, 229),
                ), //to hilight the bottom line
              ),
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,

              itemCount: name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsetsGeometry.directional(
                    top: 12,
                    start: 12,
                  ),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return StatusPage(
                                  image1: image[index],
                                  name1: name[index],
                                );
                              },
                            ),
                          );
                        },

                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 43,
                              backgroundColor: const Color.fromARGB(
                                255,
                                154,
                                60,
                                192,
                              ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(image[index]),
                                radius: 40,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(name[index], style: TextStyle(fontSize: 17)),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(children: [slots(), SizedBox(height: 5)]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
