import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeUI(),
  ));
}

class HomeUI extends StatefulWidget {
  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //const HomeUI({super.key});
  int index = 0;

  var images = [
    "assets/images/TaylorSwift.jpg",
    "assets/images/samSmith.jpg",
    "assets/images/Rihanna.jpg",
    "assets/images/Dax.jpg",
    "assets/images/David .jpg"
  ];

  var music_name = ["Hero", "Unholy", "Lift Me Up", "Depression", "I'm Good"];

  var singer_name = [
    "Taylor Swift",
    "Sam Smith,Kim Petras,Rihanna,Dax,David Guetta & Bebe Rexha"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "MUSIFY",
          style: TextStyle(color: Colors.pink, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Suggested playlists",
            style: TextStyle(fontSize: 25, color: Colors.pink),
          ),
          CarouselSlider(
            items: const [
              Image(
                image: AssetImage("assets/images/images5.jpg"),
              ),
              Image(image: AssetImage("assets/images/images6.jpg")),
              Image(image: AssetImage("assets/images/image7.jpg")),
              Image(image: AssetImage("assets/images/images8.jpg")),
            ],
            options: CarouselOptions(
                autoPlay: true,
                scrollDirection: Axis.horizontal,
                aspectRatio: 10 / 9),
          ),
          const Text(
            "Recommended for you",
            style: TextStyle(fontSize: 25, color: Colors.pink),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomScrollView(
            slivers: [ SliverList(delegate: SliverChildListDelegate(List.generate(30, (index)=>ListTile(
                    leading: const Image(
                      image: AssetImage("images[index"),
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                    title: Text(
                      music_name[index],
                      style: const TextStyle(fontSize: 25, color: Colors.pink),
                    ),
                    subtitle: Text(singer_name[index],
                        style: const TextStyle(fontSize: 20, color: Colors.white)),
                    trailing: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.pink,
                        ),
                        Icon(
                          Icons.download,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // ListView.builder(
              //   itemBuilder: (context, index) => ListTile(tileColor: Colors.white,
              //     leading: Image(
              //       image: AssetImage(images[index]),
              //       height: 30,
              //       width: 30,
              //     ),
              //     title: Text(
              //       music_name[index],
              //       style: TextStyle(fontSize: 20, color: Colors.pink),
              //     ),
              //     subtitle: Text(singer_name[index],
              //         style: TextStyle(fontSize: 15, color: Colors.white)),
              //     trailing: SizedBox(
              //       width: 60,
              //       child: Row(
              //         children: [
              //           Icon(
              //             Icons.star_border,
              //             color: Colors.pink,
              //           ),
              //           Icon(
              //             Icons.download,
              //             color: Colors.pink,
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              ),
              ],
          ),
        ],
      ),
    );
  }
}
