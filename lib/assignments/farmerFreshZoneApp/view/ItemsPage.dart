import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/model/selling_products_model.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/color_widget.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/image_refracting.dart';
//import 'package:practice/assignments/farmerFreshZoneApp/widgets/category_page.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/listview_buttons.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/policy_widget.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/slider_page.dart';

import '../model/data_page.dart';
import '../widgets/know_farmer_image.dart';

class ItemsPages extends StatelessWidget {
  const ItemsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: ColoredSafeArea(color: Colors.green,
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 80,
                    decoration: const ShapeDecoration(
                        color: Colors.green, shape: BeveledRectangleBorder()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "FARMERS FRESH ZONE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "kochi",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_back_ios),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 80,
                    decoration: const ShapeDecoration(
                        color: Colors.green, shape: BeveledRectangleBorder()),
                    child: const SearchBar(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(),
                      ),
                      hintText: "Search for Vegetables ,fruits..",
                      leading: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 60,
                child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    height: 50,
                    decoration: const BoxDecoration(color: Colors.white),
                    margin: const EdgeInsets.only(left: 3),
                    child: RowButtons()),
              ),
            ),
            const SliverToBoxAdapter(child: SliderPage()),
            const SliverToBoxAdapter(child: PolicyPage()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            const SliverToBoxAdapter(
              child: Text(
                "Shop By Category ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverGrid.count(
              childAspectRatio: 2.1 / 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              crossAxisCount: 3,
              children: category
                  .map(
                    (e) => ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 150,
                        decoration:
                            const BoxDecoration(color: Color(0x62FFFFFF)),
                        child: Column(
                          children: [
                            Container(
                              foregroundDecoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      e["images"],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              decoration: const BoxDecoration(),
                              child: Text(
                                e["name"],
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SliverToBoxAdapter(
                child: Divider(
              color: Colors.grey[400],
              thickness: 5,
            )),
            const SliverToBoxAdapter(
              child: know_your_farmer(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const SliverToBoxAdapter(
              child: Text(
                "Best Selling Products ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverGrid.count(childAspectRatio: 3/3,
              crossAxisCount: 2,
              children: sellingProducts
                  .map(
                    (e) => MyWidget(
                      images: Image.network(e["photo_url"]),
                      label: Text(e["name"],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      onpressed: () {},
                      text: const Text("Add"),
                      price:
                          Text("${e["price"]}", style: const TextStyle(fontSize: 20)),
                      quantity: Text("${e["quantity"]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

// ListTile(
// leading: Icon(Icons.location_on),
// title: Text("kochi"),
//  trailing: IconButton(onPressed:(){}, icon: Icon(Icons.arrow_back_ios)),
