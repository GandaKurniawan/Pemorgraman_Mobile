import 'package:combe_app/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
