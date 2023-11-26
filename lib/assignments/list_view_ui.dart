import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListUi()));
}

class ListUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          "Cities Around World",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView(
        children: [Container(
            height: 150,
            child: const Card(
              color: Colors.orange,
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                      "https://www.trawell.in/admin/images/upload/078212929Delhi_India_Gate_Main.jpg",
                    ),
                    width: 200,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Delhi",
                          style: TextStyle(fontSize: 30),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Text(
                          "India",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        //Padding(padding: EdgeInsets.all(5)),
                        Text("Population:3.29 mil"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: const Card(
              color: Colors.orange,
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1538332576228-eb5b4c4de6f5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmlubGFuZHxlbnwwfHwwfHx8MA%3D%3D"),
                    width: 200,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FinLand",
                          style: TextStyle(fontSize: 30),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Column(
                          children: [
                            Text(
                              "Europe",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Population:5.2 mil"),
                          ],
                        ),
                      ], //SizedBox(height: 10,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: const Card(
              color: Colors.orange,
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1545073334-9cb53498f1dc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YmlnJTIwYmVufGVufDB8fDB8fHww",
                    ),
                    fit: BoxFit.fill,
                    width: 200,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "London",
                          style: TextStyle(fontSize: 30),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Text(
                          "UK",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        //Padding(padding: EdgeInsets.all(5)),
                        Text("Population:8.8 mil"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: const Card(
              color: Colors.orange,
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1524242109383-e349707a106b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fG5ldyUyMHlvcmt8ZW58MHx8MHx8fDA%3D",
                    ),
                    fit: BoxFit.fill,
                    width: 200,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "NewYork",
                          style: TextStyle(fontSize: 35),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Text(
                          "USA",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        //Padding(padding: EdgeInsets.all(5)),
                        Text("Population:30.8 mil"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: const Card(
              color: Colors.orange,
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1544161513-0179fe746fd5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHZhbmNvdXZlcnxlbnwwfHwwfHx8MA%3D%3D",
                    ),
                    fit: BoxFit.fill,
                    width: 200,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Vancouver",
                          style: TextStyle(fontSize: 35),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Text(
                          "Canada",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        //Padding(padding: EdgeInsets.all(5)),
                        Text("Population:2.6 mil"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
        ),

    );
  }
}
