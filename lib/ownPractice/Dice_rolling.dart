import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: DiceRotation(),
  ));
}

class DiceRotation extends StatefulWidget {
  const DiceRotation({super.key});

  @override
  State<DiceRotation> createState() => _DiceRotationState();
}

class _DiceRotationState extends State<DiceRotation> {
  var leftSideImageChange = 1;
  //to make changes in images number assigning the variable
  var rightsideImageChange = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   //leftSideImageChange=6;instead of manually giving number we use random
                        //   diceNumber = Random().nextInt(8) + 1;
                        //   //random class has nextInt that means whole integer number
                        //   //from 0 to max
                        //   //if i give 6 in max it takes upto 5
                        //   //if i give +1 it will keep on goes
                        // });
                        imageChange();
                      },
                      child: Image(
                        image: AssetImage(
                            "assets/images/images$leftSideImageChange.jpg"), //to incorporate the variable into string we use dollar sign
                      ))),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   rightsideImageChange = Random().nextInt(8) + 1;
                        // });
                        imageChange();
                      },
                      child:  Image(
                        image: AssetImage("assets/images/images$rightsideImageChange.jpg"),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
  void imageChange()
  {
    setState(() {
     leftSideImageChange=Random() .nextInt(8)+1;
      rightsideImageChange = Random().nextInt(8) + 1;
    });
  }
}
