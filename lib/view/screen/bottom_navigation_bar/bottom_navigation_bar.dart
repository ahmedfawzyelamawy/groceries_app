import 'package:flutter/material.dart';
import 'package:workshop/model/my_cart.dart';
import 'package:workshop/view/screen/explore_screen/explore_screen.dart';
import 'package:workshop/view/screen/filter_screen/filter_screen.dart';
import 'package:workshop/view/screen/home_screen/home_screen.dart';
import 'package:workshop/view/screen/mycart_screen/mycart_screen.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({super.key});

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int Currentindex=0;
  List<Widget> Screens=[
    HomeScreen(),
    MyCartScreen(),
    ExploreScreen(),
    FilterScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Screens[Currentindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: Currentindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            Currentindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: '')
        ],
      ),
    );
  }
}
