import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:ProfileUi()));
}

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed:(){}, icon: Icon(Icons.arrow_back_ios),),
        actions: [Drawer(backgroundColor: Colors.black,)],

      ),

    );
  }
}
