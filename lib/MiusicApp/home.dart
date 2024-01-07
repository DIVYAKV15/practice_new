//import 'package:carousel_slider/carousel_slider.dart';
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
  var mainImages=["assets/images/images1.jpg",
    "assets/images/images2.jpg",
    "assets/images/image3.jpg",
    "assets/images/images4.jpg",
    "assets/images/images5.jpg",
    "assets/images/images6.jpg",
    "assets/images/image7.jpg",
    "assets/images/images8.jpg"];
  var music_name = ["Hero", "Unholy", "Lift Me Up", "Depression", "I'm Good"];
  var singer_name = [
    "Taylor Swift",
    "Sam Smith","Kim Petras","RihannaDax","David Guetta"
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
      body: CustomScrollView(
        //shrinkWrap: true,
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
              child: Text(
                ' Suggested   Playlist ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.pink),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mainImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(3),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage(mainImages[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // playlist_carousel(),
const SliverToBoxAdapter(
  child:  Text(
            "Recommended for you",
            style: TextStyle(fontSize: 30, color: Colors.pink),
          ),

),
          const SliverToBoxAdapter(child: SizedBox(
            height: 30,
          ),),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: singer_name.length,
              (context, index) => SizedBox(
                height: 100,
                width: 300,
                child: Card(color: Colors.black,
                  child: ListTile(
                    leading: Container(
                      margin: const EdgeInsets.all(3),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      music_name[index],maxLines: 2,
                      style: const TextStyle(fontSize: 25, color: Colors.pink),
                    ),
                    subtitle: Text(singer_name[index],
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white)),
                    trailing:  const SizedBox(
    width: 60,
    child:
    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class playlist_carousel extends StatelessWidget {
//   const playlist_carousel({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       width: 100,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "Suggested playlists",
//             style: TextStyle(fontSize: 25, color: Colors.pink),
//           ),
//           CarouselSlider(
//             items: const [
//               Image(
//                 image: AssetImage("assets/images/images5.jpg"),
//               ),
//               Image(image: AssetImage("assets/images/images6.jpg")),
//               Image(image: AssetImage("assets/images/image7.jpg")),
//               Image(image: AssetImage("assets/images/images8.jpg")),
//             ],
//             options: CarouselOptions(
//                 autoPlay: false,
//                 scrollDirection: Axis.horizontal,
//                 aspectRatio: 10 / 9),
//           ),
//           const Text(
//             "Recommended for you",
//             style: TextStyle(fontSize: 25, color: Colors.pink),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//         ],
//       ),
//     );
//   }
// }
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
