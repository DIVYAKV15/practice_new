import 'package:flutter/material.dart';
import 'package:practice/MiusicApp/Search.dart';
import 'package:practice/MiusicApp/home.dart';
import 'package:practice/MiusicApp/playlistUI.dart';
import 'package:practice/MiusicApp/settings.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicUI(),
      //theme: ThemeData(primarySwatch: Colors.black),
    ),
  );
}

class MusicUI extends StatefulWidget {
  @override
  State<MusicUI> createState() => _MusicUIState();
}

class _MusicUIState extends State<MusicUI> {
  //const MusicUI({super.key});
  int index = 0;
  var screens=[HomeUI(),Searchui(),LibraryuI(),Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: screens[index],
      );

  }
}
