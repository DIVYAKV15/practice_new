import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:practice/assignments/farmerFreshZoneApp/widgets/review_widget.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          ReviewPage(
              images: Image.asset(
                "assets/images/David .jpg",
                fit: BoxFit.fill,
              ),
              name: const Text(
                "Dinesh Thambi",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              designation: const Text(
                "VP operations,TCS",
                style: TextStyle(fontSize: 25),
              ),
              review: const Text(
                ""
                "“I tried Farmers Fresh Zone  product for the fist time and I’m very satisfied. They are high-quality and worth the money. The store also offered free shipping at that price so that’s a plus!”",
                style: TextStyle(fontSize: 15),
              )),
          ReviewPage(
              images: Image.asset("assets/images/Dax.jpg"),
              name: const Text(
                "Prince P I",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              designation: const Text(
                "online digital marketing business",
                style: TextStyle(fontSize: 25),
              ),
              review: const Text(
                ""
                "“I am a regular customer of farmer fresh zone app ,As Concerned parents we have to feed our kids  pesticides free and healthy food. They are high-quality and worth the money. The store also offered free shipping at that price so that’s a plus!”",
                style: TextStyle(fontSize: 15),
              )),
          ReviewPage(
              images: Image.asset("assets/images/Rihanna.jpg"),
              name: const Text(
                "Neethu vipin",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              designation: const Text(
                "Clerk,Naval Base,Kochi",
                style: TextStyle(fontSize: 25),
              ),
              review: const Text(
                ""
                "“I tried Farmers Fresh Zone  product for the fist time and I’m very satisfied. They are high-quality and worth the money. The store also offered free shipping at that price so that’s a plus!”",
                style: TextStyle(fontSize: 15),
              )),
          ReviewPage(
              images: Image.asset("assets/images/samSmith.jpg"),
              name: const Text(
                "Dinesh ",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              designation: const Text(
                "VP operations,TCS",
                style: TextStyle(fontSize: 25),
              ),
              review: const Text(
                ""
                "“I tried Farmers Fresh Zone  product for the fist time and I’m very satisfied. They are high-quality and worth the money. The store also offered free shipping at that price so that’s a plus!”",
                style: TextStyle(fontSize: 15),
              ))
        ],
        options: CarouselOptions(
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 10),
          height: 200,
          scrollDirection: Axis.horizontal,
          initialPage: 0,
          animateToClosest: false,
          viewportFraction: 1,
        ));
  }
}
