import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MiCard()));

}
class MiCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  const Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius:50.0,
              //backgroundColor: Colors.blue,
               backgroundImage:AssetImage("assets/images/dhivi.jpg"),),
          Text("Dhivya",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          Text("Flutter Developer",style: TextStyle(fontSize: 20,),),

          SizedBox(height: 25,
          width: 190.0,
          child: Divider(color: Colors.black,),),
          Card(
            margin: EdgeInsets.all(20.0),
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("04934983"),

            ),
          ),
          SizedBox(height: 10,),
          Card(

            margin: EdgeInsets.all(20.0),
            child: ListTile(
              leading: Icon(Icons.mail),
              title: Text("Dhivya@gmail.com"),

            ),
          ),

        ],
      ),),
    );
  }

}