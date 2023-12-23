import 'package:flutter/material.dart';
import 'package:workshop/model/product.dart';
import 'package:workshop/view/screen/Beverages/componats/beverages_screen-widget.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Text('Beverages',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            child:Image.asset('assets/images/Group 6839.png')
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 695,
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    BeveragesScreenWidget(product: productes[index]),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: productes.length),
          )
        ],
      ),
    );
  }
}
