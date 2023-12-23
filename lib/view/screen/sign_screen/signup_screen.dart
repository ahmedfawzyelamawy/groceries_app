import 'package:flutter/material.dart';
import 'package:workshop/viewmodel/utils/navigation.dart';

import '../home_screen/home_screen.dart';
import '../login_screen/login_screen.dart';
import 'componats/util_signup.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

TextEditingController emailcontrollar = TextEditingController();
TextEditingController passwordcontrollar = TextEditingController();
bool obsecure = true;

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(child: Image.asset('assets/images/current2.png')),
            SizedBox(
              height: 50,
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'Enter your credentials to continue',
              style: TextStyle(color: Colors.grey[900]),
            ),
            SignupWidget(),
            Row(
              mainAxisSize: MainAxisSize.min,
               children: [
                Text(
                  'By continuing you agree to our',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Terms of service',
                    style: TextStyle(color: Colors.green),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(StadiumBorder(
                          side: BorderSide(style: BorderStyle.none)))),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
               children: [
                Text('and Privacy Policy'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigation.pushAndRemove(context, HomeScreen());
                print('Sign Up');
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  fixedSize: Size(350, 63)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      Navigation.push(context, LoginScreen());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
