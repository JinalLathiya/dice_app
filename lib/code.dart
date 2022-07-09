import 'dart:math';

import 'package:flutter/material.dart';

class diceapp extends StatefulWidget {
  const diceapp({Key? key}) : super(key: key);

  @override
  _diceappState createState() => _diceappState();
}

class _diceappState extends State<diceapp> {
  List images = <String>[
    "https://cdn.pixabay.com/photo/2013/07/12/17/39/dice-152173__480.png",
    "https://cdn.pixabay.com/photo/2013/07/12/17/39/dice-152174_1280.png",
    "https://cdn.pixabay.com/photo/2013/07/12/17/39/dice-152175_1280.png",
    "https://cdn.pixabay.com/photo/2013/07/12/17/39/dice-152176__480.png",
    "https://cdn.pixabay.com/photo/2013/07/12/17/39/dice-152177__480.png",
    "https://cdn.pixabay.com/photo/2013/07/12/17/39/dice-152178_1280.png",
  ];

  String f_dice =
      "https://cdn.pixabay.com/photo/2013/07/12/17/39/dice-152173__480.png";
  String s_dice =
      "https://cdn.pixabay.com/photo/2013/07/12/17/39/dice-152174_1280.png";

  int t_amount = 3;

  Random r1 = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Dice App",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 90,
                backgroundColor: Colors.cyanAccent,
                child: Text(
                  "Total Amount : $t_amount",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    f_dice,
                    width: 170,
                  ),
                  Image.network(
                    s_dice,
                    width: 170,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  int i1 = r1.nextInt(6);
                  int i2 = r1.nextInt(6);

                  setState(() {
                    f_dice = images[i1];
                    s_dice = images[i2];

                    t_amount = i1 + i2 + 2;
                  });
                },
                child: Container(
                  height: 60,
                  width: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Roll Dice",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
