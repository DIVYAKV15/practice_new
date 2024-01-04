import 'package:flutter/material.dart';

class Get_to_know_us_page extends StatelessWidget {
  const Get_to_know_us_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(12),
      elevation: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get To Know Us",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("About US"),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Text("Our Farmers"),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Text("  Blog"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Useful Links",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Text("Privacy Policy"),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Text("Return & Refund Policy"),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Terms & Condition",
          ),
          SizedBox(
            height: 30,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 50,
            children: [
              Image(
                image: AssetImage(
                    "assets/icons/social-facebook-button-blue-icon.png"),
                height: 40,
                width: 50,
              ),
              Image(
                image: AssetImage("assets/icons/Twitter-icon.png"),
                height: 40,
                width: 50,
              ),
              Image(
                image: AssetImage("assets/icons/linkedin-icon.png"),
                height: 40,
                width: 50,
              ),
              Image(
                image: AssetImage("assets/icons/web-github-icon.png"),
                height: 40,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
