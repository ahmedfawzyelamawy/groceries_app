import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/model/my_cart.dart';

class MYCartWidget extends StatelessWidget {
  const MYCartWidget({super.key, required this.mycart});
   final MyCart mycart ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(mycart.image??''),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(mycart.title??'',style: TextStyle(color: Colors.black,fontSize: 16),),
              Text(mycart.killo??'',style: TextStyle(color: Colors.grey,fontSize: 14),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child:Icon(
                      Icons.remove,
                      color: Colors.grey,
                    ),),
                  ),
                  SizedBox(width: 5,),
                  Text('1',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                  SizedBox(width: 5,),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child:Icon(
                      Icons.add,
                      color: Colors.green,
                    ),),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Icon(Icons.cancel_outlined,color: Colors.black,),
              SizedBox(height: 30,),
              Text('\$${mycart.price}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
            ],
          )
        ],
      ),
    );
  }
}
