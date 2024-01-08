import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/color_widget.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/slider_page.dart';
import 'package:practice/assignments/hotel/model/hotel_data.dart';
import 'package:practice/assignments/hotel/slider.dart';

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
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: ColoredSafeArea(
        color: Colors.grey,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: ListTile(
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
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
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
          ],
        ),
      ),
    );
  }
}
