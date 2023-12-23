import 'package:flutter/material.dart';
import 'package:workshop/model/groceries.dart';
import 'package:workshop/model/product.dart';
import 'package:workshop/view/screen/home_screen/compants/bestselling_wedgit.dart';
import 'package:workshop/view/componats/product/product_widget.dart';
import 'package:workshop/view/screen/home_screen/compants/groceries_wedgit.dart';
import 'package:workshop/view/screen/home_screen/compants/groceries_wedgit2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset('assets/images/current2.png', height: 40, width: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: Colors.grey[900],
                ),
                Text(
                  'Dhaka, Banassre',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SearchBar(
              elevation: MaterialStatePropertyAll(0),
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Color(0xffF2F3F2)),
              leading: Row(
                children: [
                  Icon(Icons.search),
                  Text(' Search', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Align(child: Image.asset('assets/images/Mask Group.png')),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/2771 1.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '𝓕𝓻𝓮𝓼𝓱 𝓥𝓮𝓰𝓮𝓽𝓪𝓫𝓵𝓮𝓼',
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                        Text(
                          'Get Up To 40% OFF',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Exclusive Offer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ))
              ],
            ),
            SizedBox(
              height: 230,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      ProductWidget(product: productes[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                  itemCount: productes.length),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Best selling',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ))
              ],
            ),
            SizedBox(
                height: 230,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        ProductWidget(product: bestselling[index]),
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: bestselling.length)),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Groceries',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ))
              ],
            ),
            SizedBox(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        GroceriesWedgiet(groceries: groceries[index]),
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: groceries.length)),
            SizedBox(
                height: 230,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        GroceriesWedgit2(groceries2: groceries2[index]),
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: groceries2.length)),
          ],
        ),
      ),
    );
  }
}
