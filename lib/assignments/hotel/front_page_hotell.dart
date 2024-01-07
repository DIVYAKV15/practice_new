import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/color_widget.dart';

void main() {
  runApp(const MaterialApp(
    home: MainPageHotel(),
  ));
}

class MainPageHotel extends StatelessWidget {
  const MainPageHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ColoredSafeArea(color: Colors.grey,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 10),
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
          ],
        ),
      ),
    );
  }
}
