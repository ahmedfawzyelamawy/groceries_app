import 'dart:ui';

class FindProduct{
  Color? color;
  String? image;
  String? title;
  Color? color1;
  String? image1;
  String? title1;

  FindProduct({this.color, this.image, this.title, this.color1, this.image1,
    this.title1});

}
List<FindProduct>findproductes=[
  FindProduct(
    color: Color(0xff53B175),
    image: 'assets/images/pngfuel 6.png',
    title: 'Frash Fruits \n & Vegetable',
    color1: Color(0xffF8A44C),
    image1: 'assets/images/Group 6835.png',
    title1: 'Cooking Oil \n & Ghee',
  ),
  FindProduct(
    color: Color(0xffF7A593),
    image: 'assets/images/meat.png',
    title: 'Meat & Fish',
    color1: Color(0xffD3B0E0),
    image1: 'assets/images/Bakery.png',
    title1: 'Bakery & Snacks',
  ),
  FindProduct(
    color: Color(0xffFDE598),
    image: 'assets/images/egg.png',
    title: 'Dairy & Eggs',
    color1: Color(0xffB7DFF5),
    image1: 'assets/images/pepsi.png',
    title1: 'Beverages',
  ),
  FindProduct(
    color: Color(0xff53B175),
    image: 'assets/images/pngfuel 6.png',
    title: 'Frash Fruits \n & Vegetable',
    color1: Color(0xffF8A44C),
    image1: 'assets/images/Group 6835.png',
    title1: 'Cooking Oil \n & Ghee',
  )

];