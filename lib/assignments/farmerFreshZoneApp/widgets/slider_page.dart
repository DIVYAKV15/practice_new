import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(padding: EdgeInsets.only(top: 10),
        height: 300,
        //width: double.infinity,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: CarouselSlider(
          items: const [
            Image(
              image: AssetImage(
                "assets/images/christmas.jpg",
              ),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Image(
              image: AssetImage("assets/images/newyear.jpg"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            )
          ],
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            aspectRatio: 0.5 / 1,
            autoPlay: true,
            viewportFraction: 1,
            autoPlayAnimationDuration: const Duration(seconds: 20),
          ),
        ),
      ),
    );
  }
}
