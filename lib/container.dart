import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Card()));
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //stretch across the screen
          children: [
            Container(
              //margin:const EdgeInsets.all(20.0),
              //padding:const EdgeInsets.all(30.0),
              color: Colors.green,
              height: 100,
              width: 100,
              child: const Text("hello"),
            ),
            //const SizedBox(height: 20,
            //),
            //sized-box is to give space between 2 widgets
            //only height and width
            //whereas margin can give space between all the four sides
            //and padding give inside the container
            //as the column are in vertical just need to give height
            //if the row is in horizontal then give the width
            Container(
             // margin:const EdgeInsets.all(20.0),
              //padding:const EdgeInsets.all(30.0),
              color: Colors.yellow,
              height: 100,
              width: 100,
              child: const Text("container 2"),
            ),
            const SizedBox(width:20),
            Container(
              //margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(30.0),
              color: Colors.red,
              height: 100,
              width: 100,
              child: const Text("container 3"),
             ),
             Container(
               height:100,
            //   width: double.infinity,
            //   color: Colors.blue,
             ),
          ],
        ),
      ),
    );
  }
}
