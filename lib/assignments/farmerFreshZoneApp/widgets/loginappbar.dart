import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginAppBar(),
  ));
}

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 380,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Stack(alignment: Alignment.topCenter, children: [
          Wrap(
            children: [
              IconButton(
                onPressed: () {
                  //need to give cart page here
                },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              ),

          const Text("FARMERS FRESH ZONE",
              style: TextStyle(fontSize: 45, color: Color(0xFF78909C))), ],
          ),
          const Positioned(
            top: 150,
            child: Image(image: AssetImage("assets/images/login.jpg")),
          )
        ]),
      ),
    );
  }
}
