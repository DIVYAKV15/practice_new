import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  final Image images;
  final Widget name;
  final Widget designation;
  final Widget review;
  const ReviewPage(
      {super.key,
      required this.images,
      required this.name,
      required this.designation,
      required this.review});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 400,width: MediaQuery.of(context).size.width,
      child: Card(elevation:10 ,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading:CircleAvatar(child: images, ),
              title: name,
              subtitle: designation,
            ),
            review,
          ],
        ),
      ),
    );
  }
}
