import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workshop/model/my_cart.dart';
import 'package:workshop/view/screen/mycart_screen/componats/my_cart_wedgit.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: ListView(
        children: [
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 570,
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    MYCartWidget(mycart: mycarts[index]),
                separatorBuilder: (context, index) =>
                    Divider(color: Colors.grey, thickness: 1),
                itemCount: mycarts.length),
          ), ElevatedButton(
            onPressed: () {},
            child: Text(
              'Go to Checkout',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19)),
                fixedSize: Size(360, 65)),
          )
        ],
      ),
    );
  }
}
