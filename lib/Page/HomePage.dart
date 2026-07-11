import 'package:flutter/material.dart';
import 'package:instagram_clone/statusPage.dart' show StatusPage;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<String> image = [
  'assets/image/mauvika.webp',
  'assets/image/citlai.webp',
  'assets/image/Keqing1.webp',
  'assets/image/Bina.webp',
  'assets/image/Hutao1.jpg',
];
final List<String> name = [
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

      //body: pages[currentPage],
      body: SizedBox(
        height: 126,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,

          itemCount: name.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsetsGeometry.directional(top: 12, start: 12),
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
    );
  }
}
