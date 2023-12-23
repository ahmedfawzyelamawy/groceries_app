import 'dart:ui';

class Groceries{
  String? image;
  String? name;
  Color? color;

  Groceries({this.image, this.name, this.color});
}
List<Groceries>groceries=[
  Groceries(
    image: 'assets/images/Pulses.png',
    name: 'Pulses',
     color: Color(0xffF8A44C)
  ),
  Groceries(
    image: 'assets/images/Rice.png',
    name: 'Rice',
    color: Color(0xff53B175)
  )
];