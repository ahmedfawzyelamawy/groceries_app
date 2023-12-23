import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Navigation {
  static void push(context, Widget nextScreen) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => nextScreen,
        ));
  }

  static void pushAndRemove(context, Widget nextScreen) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => nextScreen,
        ),
        (route) => false);
  }
}
