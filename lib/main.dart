import 'package:flutter/material.dart';
import 'package:workshop/cubit/test.dart';
import 'package:workshop/view/screen/Beverages/beverages_screen.dart';
import 'package:workshop/view/screen/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:workshop/view/screen/explore_screen/explore_screen.dart';
import 'package:workshop/view/screen/filter_screen/filter_screen.dart';
import 'package:workshop/view/screen/home_screen/home_screen.dart';
import 'package:workshop/view/screen/login_screen/login_screen.dart';
import 'package:workshop/view/screen/mycart_screen/mycart_screen.dart';
import 'package:workshop/view/screen/onbording_screen/onbording_screen.dart';
import 'package:workshop/view/screen/onbording_screen/splash_screen.dart';
import 'package:workshop/view/screen/product_details_screen/prodact_details_screen.dart';
import 'package:workshop/view/screen/sign_screen/signup_screen.dart';
void main(){
 runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home: SignupScreen(),
   )
 );
 }