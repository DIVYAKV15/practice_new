import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/signUp_page.dart';

void main()
{
  runApp(MaterialApp(home:AppBarExamples()
  ));
}
class AppBarExamples extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>_AppBarExamplesState();

}

class _AppBarExamplesState extends State<AppBarExamples>
{
  @override
//   void initState() {
// Timer(Duration(seconds: 5), () {
//   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SignUp()));
//     // TODO: implement initState
// });
//     super.initState();
//
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MY APP"),
        titleTextStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: )),
        leading: IconButton(onPressed: (){

        }, icon:Icon(Icons.home)),
        actions: [IconButton(onPressed: (){}, 
            icon: Icon(Icons.more_vert),),
          IconButton(onPressed: (){},
              icon: Icon(Icons.search))
        ],

      ),
    );
  }
}