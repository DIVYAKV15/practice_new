import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FruitApp(),
  ));
}

class FruitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            //width: 100,
            child: Card(
              color: Colors.grey,
              margin: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image:AssetImage("assets/images/appl.png"),
                    height: 70,
                    width: 70,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Name:"),
                            TextSpan(
                                text: "Apple",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Unit:"),
                            TextSpan(
                                text: "kg",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "Price:"),
                        TextSpan(
                            text: "\$20",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  MaterialButton(
                      color: Colors.blueGrey,
                      shape: StadiumBorder(),
                      child: const Text("Add TO Cart"),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            // width: 100,
            child: Card(
              color: Colors.grey,
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage("assets/images/mango.png"),
                    height: 70,
                    width: 70,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Name:"),
                            TextSpan(
                                text: "Mango",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Unit:"),
                            TextSpan(
                                text: "Doz",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "Price:"),
                        TextSpan(
                            text: "\$50",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  MaterialButton(
                      color: Colors.blueGrey,
                      shape: StadiumBorder(),
                      child: const Text("Add TO Cart"),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            //width: 100,
            child: Card(
              color: Colors.grey,
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage("assets/images/banana.png"),
                    height: 70,
                    width: 70,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Name:"),
                            TextSpan(
                                text: "banana",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Unit:"),
                            TextSpan(
                                text: "Doz",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "Price:"),
                        TextSpan(
                            text: "\$30",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  MaterialButton(
                      color: Colors.blueGrey,
                      shape: StadiumBorder(),
                      child: const Text("Add TO Cart"),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            // width: 100,
            child: Card(
              color: Colors.grey,
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage("assets/images/grapes.png"),
                    height: 70,
                    width: 70,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Name:"),
                            TextSpan(
                                text: "grapes",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Unit:"),
                            TextSpan(
                                text: "Doz",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "Price:"),
                        TextSpan(
                            text: "\$30",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  MaterialButton(
                      color: Colors.blueGrey,
                      shape: StadiumBorder(),
                      child: const Text("Add TO Cart"),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            // width: 100,
            //decoration: BoxDecoration(),
            child: Card(
              color: Colors.grey,
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage("assets/images/watermelon.png"),
                    height: 70,
                    width: 70,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(text: "Name:"),
                              TextSpan(
                                  text: "watermelon",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),

                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Unit:"),
                            TextSpan(
                                text: "Doz",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "Price:"),
                        TextSpan(
                            text: "\$30",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(15)),
                  MaterialButton(
                      color: Colors.blueGrey,
                      shape: StadiumBorder(),
                      child: const Text("Add TO Cart"),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            //width: 100,
            child: Card(
              color: Colors.grey,
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage(
                      "assets/images/kiwi.png",
                    ),
                    height: 70,
                    width: 70,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Name:"),
                            TextSpan(
                                text: "kiwi",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Unit:"),
                            TextSpan(
                                text: "Doz",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "Price:"),
                        TextSpan(
                            text: "\$30",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  MaterialButton(
                      color: Colors.blueGrey,
                      shape: StadiumBorder(),
                      child: const Text("Add TO Cart"),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            // width: 100,
            child: Card(
              color: Colors.grey,
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage(
                      "assets/images/Orange.png",
                    ),
                    height: 70,
                    width: 70,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Name:"),
                            TextSpan(
                                text: "orange",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Unit:"),
                            TextSpan(
                                text: "Doz",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "Price:"),
                        TextSpan(
                            text: "\$30",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  MaterialButton(
                      color: Colors.blueGrey,
                      shape: StadiumBorder(),
                      child: const Text("Add TO Cart"),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            // width: 100,
            child: Card(
              color: Colors.grey,
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage(
                      "assets/images/peach.png",
                    ),
                    height: 50,
                    width: 30,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Name:"),
                            TextSpan(
                                text: "peach",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Unit:"),
                            TextSpan(
                                text: "Doz",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "Price:"),
                        TextSpan(
                            text: "\$15",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  MaterialButton(
                      color: Colors.blueGrey,
                      shape: StadiumBorder(),
                      child: const Text("Add TO Cart"),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
