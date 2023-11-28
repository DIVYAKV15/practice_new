import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: LibraryuIEx(),));
}

class LibraryuIEx extends StatefulWidget {
  @override
  State<LibraryuIEx> createState() => _LibraryuIExState();
}

class _LibraryuIExState extends State<LibraryuIEx> {
  int index = 0;
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
        bottomNavigationBar: BottomNavigationBar(
          onTap: (TapIndex) {
            setState(() {
              index = TapIndex;
            });
          },
          currentIndex: index,
          //elevation: 0.0,
          items: const [

            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: "Playlists"),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_rounded),
              label: "Settings",
            ),
          ],
          selectedItemColor: Colors.amber,
          selectedLabelStyle:const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
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
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.fill),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
