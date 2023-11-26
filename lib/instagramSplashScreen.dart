import 'package:flutter/material.dart';
import 'package:image_gradient/image_gradient.dart';

void main() {
  runApp(MaterialApp(home: InstagramSplash()));
}

class InstagramSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 320, 0, 0),
              child: const Center(
                child: Image(
                  image: AssetImage("assets/icons/Instagram_logo.png"),
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
              child: Column(
                children: [
                  const Text(
                    "from",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  ImageGradient.linear(
                    image: Image.asset("assets/icons/meta_logo_icon.png",
                      height: 30,width: 20,),
                    colors:
                        const [Colors.pink, Colors.yellow]),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
