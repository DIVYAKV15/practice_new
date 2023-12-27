import 'package:flutter/material.dart';



class FlatExample extends StatelessWidget {
  //const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MaterialButton(
              shape: const CircleBorder(),
              color: Colors.grey,
              onPressed: () {},
              child: const Text(
                "s",
                style: TextStyle(color: Colors.pink),
              ),),
          MaterialButton(textColor: Colors.green,
            shape: const CircleBorder(),
            color: Colors.grey,
            onPressed: () {},
            child: const Text(
              "M",
              style: TextStyle(color: Colors.pink),
            ),),
          MaterialButton(splashColor:Colors.green ,
            shape: const CircleBorder(),
            color: Colors.grey,
            onPressed: () {},
            child: const Text(
              "L",
              style: TextStyle(color: Colors.pink),
            ),),
          MaterialButton(highlightColor:Colors.green ,
            shape: const CircleBorder(),
            color: Colors.grey,
            onPressed: () {},
            child: const Text(
              "Xl",
              style: TextStyle(color: Colors.pink),
            ),),
        ],
      ),
    );
  }
}
