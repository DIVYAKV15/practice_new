import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/image_refracting.dart';

import '../model/selling_products_model.dart';
void main()
{
  runApp(MaterialApp(home: SellingProducts(),));
}

class SellingProducts extends StatelessWidget {
  const SellingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: sellingProducts
          .map(
            (e) => MyWidget(
                images: Image.network(e["photo_url"]),
              label: Text(e["name"], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                onpressed:(){},text: Text("Add"),
            price: Text("${e["price"]}",style: TextStyle(fontSize: 20)),
            quantity: Text("${e["quantity"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),)
          )
          .toList(),
    );
  }
}
