import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 320,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    AppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      leading:
                          Icon(Icons.arrow_back_ios_new, color: Colors.black),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Icon(Icons.ios_share, color: Colors.black),
                        )
                      ],
                    ),
                    Image.asset('assets/images/apple2.png'),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 3,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 3,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 3,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 2,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Naturel Red Apple',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      )),
                      Icon(Icons.favorite_border)
                    ],
                  ),
                  Text(
                    '1kg, Price',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(child: Text('1')),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                      Spacer(),
                      Text(
                        '\$4.99',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('Product Detail')),
                      Icon(Icons.expand_more_outlined)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('Nutritions')),
                      Container(
                        height: 18,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text('100gr',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 9))),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('Review')),
                      Icon(
                        Icons.star,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffF3603F),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add To Basket',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                        fixedSize: Size(360, 62),
                        backgroundColor: Color(0xff53B175)),
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
