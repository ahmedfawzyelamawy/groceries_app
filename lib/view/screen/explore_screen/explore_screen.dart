import 'package:flutter/material.dart';
import 'package:workshop/model/Find_Products.dart';
import 'package:workshop/view/screen/explore_screen/componats/explore_screen_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Find Products',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SearchBar(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Color(0xffF2F3F2)),
            elevation: MaterialStatePropertyAll(0),
            leading: Row(
              children: [
                Icon(Icons.search),
                Text('Search store', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 625,
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    ExploreScreenWidget(findProduct: findproductes[index]),
                separatorBuilder: (context, index) => SizedBox(height: 5),
                itemCount: findproductes.length),
          )
        ],
      ),
    );
  }
}
