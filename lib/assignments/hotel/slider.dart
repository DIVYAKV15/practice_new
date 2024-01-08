import 'package:flutter/material.dart';

import 'model/hotel_data.dart';

void main() {
  runApp(MaterialApp(
    home: SliderHotel(),
  ));
}

class SliderHotel extends StatelessWidget {
  const SliderHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView(scrollDirection: Axis.horizontal,
          children: hotel_data
              .map(
                (e) =>
                    Card(clipBehavior: Clip.hardEdge,
                    color: Colors.white54,
                    elevation: 2,
                    margin: EdgeInsets.only(top: 10, left: 8, bottom: 550),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 125,
                          width: 175,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(e["images"]), fit: BoxFit.fill),
                          ),
                        ),
                        Text("${e["name"]}"),
                        Text("${e["star"]}"),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${e["price"]}"),
                            SizedBox(
                              width: 25,
                            ),
                            Text("${e["rating"]}"),
                            Icon(Icons.star_border),
                          ],
                        )
                      ],
                    ),
                  ),
                ).toList(),



      ),
    );
  }
}
// hotel_data
//     .map((e) =>  CarouselSlider(options: CarouselOptions(scrollDirection: Axis.horizontal),
// items: Container(
// height: 180,
// width: 280,
// child:
// Column(crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// height: 75,
// width: 75,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(e["images"]),
// fit: BoxFit.fill),
// ),
// ),
// Text("${e["name"]}"),
// Text("${e["star"]}"),
// Row(
// children: [
// Text("${e["price"]}"),
// Wrap(
// children: [
// Text("${e["rating"]}"),
// Icon(Icons.star_border),
// ],
// )
// ],
// )
// ],
// ),
// ),
// ))
//     .toList(),
