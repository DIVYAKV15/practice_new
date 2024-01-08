import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/color_widget.dart';
//import 'package:practice/assignments/farmerFreshZoneApp/widgets/slider_page.dart';
//import 'package:practice/assignments/hotel/model/hotel_data.dart';
import 'package:practice/assignments/hotel/slider.dart';

import 'model/hotel_data.dart';

void main() {
  runApp(const MaterialApp(
    home: MainPageHotel(),
  ));
}

class MainPageHotel extends StatelessWidget {
  const MainPageHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
       slivers:  [
          SliverAppBar(
            expandedHeight: 130,
            floating: true,
            title: const ListTile(
              title: Text(
                "HI",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "FInd Your Favourite Hotel",
                style: TextStyle(fontSize: 20),
              ),
              trailing: CircleAvatar(),
            ),
            bottom: AppBar(
              title: Container(
                margin: const EdgeInsets.all(20),
                child: const SearchBar(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.all(5),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  hintText: "Search your favourite hotel..",
                  leading: Icon(Icons.search),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              ' Popular Hotels ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          // SliverToBoxAdapter(child: SliderHotel()),
          SliverList(
            delegate: SliverChildListDelegate(
              hotel_data
                  .map(
                    (e) => Card(clipBehavior: Clip.antiAlias,
                      color: Colors.white54,
                      elevation: 2,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.only(top: 10, left: 8, bottom: 550),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 125,
                            width: 175,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(e["images"]),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text("${e["name"]}"),
                          Text("${e["star"]}"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
