import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/model/product.dart';

class BeveragesScreenWidget extends StatelessWidget {
  const BeveragesScreenWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsetsDirectional.all(7),
          width: 170,
          height: 230,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Center(child: Image.asset(product.image ?? ''))),
                Text(
                  product.name ?? '',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  product.description ?? '',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '\$${product.price ?? ''}',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                      backgroundColor: Colors.green,
                      mini: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: 170,
          height: 230,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Center(child: Image.asset(product.image1 ?? ''))),
                Text(
                  product.name1 ?? '',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  product.description1 ?? '',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '\$${product.price1 ?? ''}',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                      backgroundColor: Colors.green,
                      mini: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
