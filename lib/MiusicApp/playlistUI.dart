import 'package:flutter/material.dart';

class LibraryuI extends StatelessWidget {
  var images = [
    "assets/images/images1.jpg",
    "assets/images/images2.jpg",
    "assets/images/image3.jpg",
    "assets/images/images4.jpg",
    "assets/images/images5.jpg",
    "assets/images/images6.jpg",
    "assets/images/image7.jpg",
    "assets/images/images8.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "PLayLists",
            style: TextStyle(color: Colors.pink),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            tabs: [
              ListTile(
                tileColor: Colors.black,
                leading: const Text(
                  "Search...",
                  style: TextStyle(color: Colors.pink),
                ),
                trailing: const Icon(
                  Icons.search,
                  color: Colors.pinkAccent,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),
              ),
            ],
          ),
        ),
        body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          childrenDelegate: SliverChildListDelegate(
            List.generate(
              8,
              (index) => Container(
                margin: const EdgeInsets.fromLTRB(10, 30, 10, 0),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.fill),
                ),
                // child: Image(
                //   image: AssetImage("assets/images/images1.jpg"),
                //   fit: BoxFit.fill,
                // ),
                // color: Colors.blue,
                // child: const Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text("Top 50 music"),
                //     Divider(
                //       thickness: 10.0,
                //     ),
                //     Text("Global"),
                //   ],
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
