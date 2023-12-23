import 'package:flutter/cupertino.dart';
import 'package:workshop/model/groceries.dart';

class GroceriesWedgiet extends StatelessWidget {
  const GroceriesWedgiet({super.key, required this.groceries});
   final Groceries groceries;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Container(
          padding: EdgeInsetsDirectional.all(10),
          margin: EdgeInsetsDirectional.all(10),
          height: 105,
          width: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: groceries.color ,
          ),
          child: Row(
            children: [
              Image.asset(groceries.image??''),
              SizedBox(width: 10,),
              Text(groceries.name??'',style: TextStyle(color: Color(0xff3E423F),fontSize: 18),)
            ],
          ),
        ),
      ],
    );
  }
}
