import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/model/product.dart';

class GroceriesWedgit2 extends StatelessWidget {
  const GroceriesWedgit2({super.key, required this.groceries2});
final Product groceries2 ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 173,
            height: 230,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Center(child: Image.asset(groceries2.image??''))),
                  Text(
                    groceries2.name??'',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    groceries2.description??'',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '\$${groceries2.price??''}',
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
      ),
    );
  }
}
