import 'package:flutter/material.dart';

import 'HomePage.dart' show image, name;

class slots extends StatefulWidget {
  final int index1;
  final String name1;
  const slots({super.key, required this.index1, required this.name1});

  @override
  State<slots> createState() => _slotsState();
}

class _slotsState extends State<slots> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Colors.red,
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 4,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(image[widget.index1]),
                ),
              ),

              Text(
                widget.name1,
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      width: 1.4,
                      color: const Color.fromARGB(255, 246, 244, 244),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Follow", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          ////////////////////
          //    image
          Container(
            height: 230,
            width: double.infinity,
            color: Colors.amber,
            child: Text("PICTURE"),
          ),
          //////////////////////////////
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ilcs(icon1: Icons.favorite_border_sharp),
              SizedBox(width: 4),
              ilcs(icon1: Icons.comment_bank_outlined),
              SizedBox(width: 4),
              ilcs(icon1: Icons.share_outlined),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: ilcs(icon1: Icons.bookmark_border, size1: 35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

///////////
class ilcs extends StatelessWidget {
  final IconData icon1;
  final double size1;
  // final VoidCallback onTap;
  const ilcs({
    super.key,
    required this.icon1,
    this.size1 = 32,
    // required this.onTap,
  }); // we set deafault size 24
  //and dont use "required" cuz it say this parameter must to give

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              // onTap;
            },
            icon: Icon(icon1, size: size1),
          ),
        ],
      ),
    );
  }
}
