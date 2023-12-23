import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/model/Find_Products.dart';

class ExploreScreenWidget extends StatelessWidget {
  const ExploreScreenWidget({super.key, required this.findProduct});
   final FindProduct findProduct;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          margin: EdgeInsetsDirectional.all(10),
          padding: EdgeInsetsDirectional.all(12),
          height: 189,
          width: 165,
          decoration: BoxDecoration(
              color: findProduct.color,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color:Colors.grey)
          ),
          child: Column(
            children: [
              Expanded(child: Image.asset(findProduct.image??'')),
              Text(findProduct.title??'',style: TextStyle(color: Colors.black),),
             ],
          ),
        ),
        Container(
          padding: EdgeInsetsDirectional.all(12),
          height: 189,
          width: 165,
          decoration: BoxDecoration(
              color: findProduct.color1,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color:Colors.grey)
          ),
          child: Column(
            children: [
              Expanded(child: Image.asset( findProduct.image1??'')),
              Text( findProduct.title1??'',style: TextStyle(color: Colors.black),),
             ],
          ),
        ),
      ],
    );
  }
}
