import 'package:flutter/material.dart';

class slots extends StatelessWidget {
  const slots({super.key});

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
                  backgroundImage: AssetImage('assets/image/Bina.webp'),
                ),
              ),

              Text(
                "Coloumbina",
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
                    color: const Color.fromARGB(255, 215, 206, 206),
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
        ],
      ),
    );
  }
}
