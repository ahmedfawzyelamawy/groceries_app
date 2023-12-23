import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff53b175),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width:70 ,),
              Image.asset('assets/images/firstscreen.png'),
              Column(
                children: [
                  Text(
                    'nectar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 60),
                  ),
                  Text(
                    ' o n l i n e g r o c e r i e t',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
