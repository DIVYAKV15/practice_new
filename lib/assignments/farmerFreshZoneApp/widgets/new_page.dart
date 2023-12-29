import 'package:flutter/material.dart';

class News_page extends StatelessWidget {
  const News_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,margin: const EdgeInsets.only(bottom: 15, top: 15),
      child: Column(
          children: [
            const Text(
                "This Kochi-based-farm-to-fork online\n marketplace is connecting farmers\ndirectly to customers",style: TextStyle(fontSize: 19,),textAlign:TextAlign.center ),
            const SizedBox(
              height: 20,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Et.png",height: 50,width: 100,),
                Image.asset("assets/images/your_story.png",height: 50,width: 50,),
                Image.asset("assets/images/indian_express.png",height: 50,width: 150,),
                Image.asset("assets/images/manorama_news.jpg",height: 50,width: 50,),
              ],
            )
          ]),
    );
  }
}