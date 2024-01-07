import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: Hotelbooking(),
  ));
}

class Hotelbooking extends StatefulWidget {
  const Hotelbooking({super.key});

  @override
  State<Hotelbooking> createState() => _HotelbookingState();
}

class _HotelbookingState extends State<Hotelbooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                    height: 300,
                    child: const Image(
                      image: AssetImage("assets/images/hotel.jpg"),
                      fit: BoxFit.fill,
                    )),
                const Positioned(
                  top: 200,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Crowne Plaza \n kochi,kerala",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                            child: Text("8.4/85 reviews"),
                          ),
                          SizedBox(
                            width: 230,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBarIndicator(
                      itemBuilder: (context, index) =>
                          const Icon(Icons.star, color: Colors.deepPurple),
                      itemCount: 5,
                      itemSize: 30,
                      rating: 3.75,
                    ),
                    const Wrap(
                      children: [
                        Icon(Icons.location_on),
                        Text(
                          "5KM to lulu mall",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$200",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 25),
                    ),
                    Text("/Per Night"),
                  ],
                ),
              ),
            ),
            // RatingBar(
            //   initialRating: 3,
            //   itemCount: 5,
            //   ratingWidget: RatingWidget(
            //     full: FaIcon(FontAwesomeIcons.solidStar),
            //     half: FaIcon(FontAwesomeIcons.starHalf),
            //     empty: FaIcon(FontAwesomeIcons.starHalfStroke),
            //   ),
            //   onRatingUpdate: (rating) => print(rating),
            // ),
          ),
          SliverToBoxAdapter(
            child:  Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(style:ButtonStyle(padding:MaterialStatePropertyAll(EdgeInsets.all(15),) ,backgroundColor: MaterialStateProperty.all(Colors.deepPurple,),) ,onPressed: () {}, child: const Text("BOOK NOW",style: TextStyle(color: Colors.white),)),
            )),

          const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                Text("Ramada Plaza Palm Grove",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                              Text(
                    """With a fantastic view of the Arabian Sea, Ramada Plaza Palm Grove, Kochi, is a perfect destination for travellers. This hotel near Juhu Beach is located just 6.9 kilometres away from cochin airport.\n Ramada Plaza Palm Grove Hotel, one of the best 5-star hotels in Juhu provides easy access to multiple destinations in the city. As you stay in our luxurious Juhu beach hotel, enjoy umpteen facilities and a fantastic sea view
Just a short drive from Bandra Kurla Complex, the city’s prime business area, our Juhu Beach Hotel in Mumbai is close to the Bollywood district, the Bombay Exhibition Centre, and the International and Domestic Airports. These factors make Ramada Plaza Palm Grove, Mumbai, one of the top 5-star hotels near Juhu Beach. Most of our accommodation options are sea view suites and hotel rooms near Juhu Beach offering a wonderful view at dusk and dawn. The facilities provided at Ramada Plaza Palm Grove, Mumbai range from private meeting rooms at the 24-hour business centre to state-of-the-art 5-star banquet halls near Juhu Beach""",maxLines: 15,style: TextStyle(fontSize: 15),)
                            ],
                          ),
              )),
        ],
      ),
    );
  }
}
