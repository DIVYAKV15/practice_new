import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridViewAssign()));
}

class GridViewAssign extends StatelessWidget {
  @override
  var icons = [
    Icons.home,
    Icons.doorbell,
    Icons.camera_alt_outlined,
    Icons.stars,
    Icons.snapchat,
    Icons.phone,
    Icons.mic_off_outlined,
    Icons.hail,
    Icons.ac_unit,
    Icons.abc
  ];
  var color = [
    Colors.blue,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.pink,
    Colors.brown,
    Colors.yellow,
    Colors.purple,
    Colors.teal,
    Colors.grey,
    Colors.greenAccent
  ];

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: SingleChildScrollView(
        child: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 30, mainAxisSpacing: 30),
          childrenDelegate: SliverChildListDelegate(
            List.generate(
              10,
              (index) => Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(16),
                color: color[index],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(icons[index]),
                    const Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Heart"), Text("Shaker")],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
