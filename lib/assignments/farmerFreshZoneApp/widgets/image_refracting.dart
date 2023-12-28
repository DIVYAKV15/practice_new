import 'dart:ui';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  Color? bgcolor;
  final Image? images;
  final Widget? label;
  final Text? price;
  final Widget? quantity;
  VoidCallback? onpressed;
  final Widget? text;
  MyWidget(
      {this.bgcolor,
      this.images,
      required this.label,
      required this.onpressed,
      this.price,
      this.quantity,
      this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(),
            child: images,
          ),
          Container(child: label,),
          Container(
            child: price,),

               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [Container(child: quantity,),
                 ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: onpressed,
                    child: text)
                    ],
               ),


        ],
      ),
    );
  }
}
