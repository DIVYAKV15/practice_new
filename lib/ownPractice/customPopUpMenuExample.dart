import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';

class CustomExample extends StatelessWidget {
  //const CustomExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:Text("Custom PopUp menu") ,actions: [
       // CustomPopupMenu(child: Icon(Icons.add_circle_outline,color: Colors.white,),
            // menuBuilder: (){
            //
            // }, pressType: pressType)
      ],
      ),
    );
  }
}
