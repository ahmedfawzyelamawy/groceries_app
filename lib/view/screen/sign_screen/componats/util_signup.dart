import 'package:flutter/material.dart';

import '../../login_screen/login_screen.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        TextFormField(
           decoration: InputDecoration(
            labelText: 'Username',
            labelStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 20,),
        TextFormField(
            controller: emailcontrollar,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Colors.black,
              ),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onFieldSubmitted: (value) {
              print(value);
            },
            onChanged: (value) {
              print(value);
            },
            validator: (value) {
              if ((value ?? '').isEmpty) {
                return 'please, Enter your email';
              }
            }),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.black,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obsecure = !obsecure;
                });
              },
              icon: Icon(
                obsecure ? Icons.visibility : Icons.visibility_off,
                color: obsecure ? Colors.grey[500] : Colors.black,
              ),
            ),
          ),
          obscureText: obsecure,
          // obscuringCharacter: '*',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onFieldSubmitted: (value) {
            print(value);
          },
          onChanged: (value) {
            print(value);
          },
          validator: (value) {
            if ((value ?? '').isEmpty) {
              return 'please, Enter your password';
            } else if (!RegExp(r'[A-Z]').hasMatch(value ?? '')) {
              return 'Password Must Contain At Least One Captial Later';
            } else if (!RegExp(r'[0-9]').hasMatch(value ?? '')) {
              return 'The password must contain numbers';
            } else if (!RegExp(r'[a-z]').hasMatch(value ?? '')) {
              return 'The password must contain lowercase letters';
            } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                .hasMatch(value ?? '')) {
              return 'The password must contain distinctive signs !@#\$%^&*(),.?":{}|<>';
            } else if ((value?.length ?? 0) < 8) {
              return 'password can`t Be less than 8 characters';
            }
            return null;
          },
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
