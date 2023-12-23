import 'package:flutter/material.dart';
import 'package:workshop/viewmodel/utils/navigation.dart';

import '../home_screen/home_screen.dart';
import '../sign_screen/signup_screen.dart';
import 'componats/util_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailcontrollar = TextEditingController();
TextEditingController passwordcontrollar = TextEditingController();
bool obsecure = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(9.0),
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
              'Loging',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'Enter your emails and password',
              style: TextStyle(color: Colors.grey[900]),
            ),
            LoginScreenWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget password?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: (
                  ) {
                Navigation.pushAndRemove(context, HomeScreen());
                print('login');
              },
              child: Text(
                'Login',
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
                  'Don`t have an account? ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      Navigation.push(context, SignupScreen());
                    },
                    child: Text(
                      'SignUp',
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
