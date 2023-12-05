

import 'package:flutter/material.dart';
import 'package:practice/ownPractice/ROute/screens/loginHome.dart';

class HomeScreenLogin extends StatelessWidget {
  //const HomeScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Welcome"),
    actions: [IconButton(onPressed: (){
      signout(context);
    }, icon: Icon(Icons.exit_to_app),)],),
    );
  }
}
void signout(BuildContext context)//for navigator to use inside function we need pass the context
{
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginHome()), (route) => false);
}
///PushAndRemoveUntil means it will the consective screen
///and push only the screen we want
///if we have one or more screen between the homescreen and loginscreen
///when we push to that screen it directly goes to other page
///and in between pages has to be killed
///and start from starting