import 'package:flutter/material.dart';

class know_your_farmer extends StatelessWidget {
  const know_your_farmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 200,
      margin: const EdgeInsets.all(10),
      // decoration: BoxDecoration(
      //     border: Border.all(
      //         width: 5,
      //         strokeAlign: BorderSide.strokeAlignOutside,
      //         style: BorderStyle.solid)),
      //width: MediaQuery.of(context).size.width,

      child: Image.asset("assets/images/knowYourfarmer.jpg",
        fit: BoxFit.cover,),
    );
  }
}