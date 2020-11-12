import 'package:combe_app/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class SignUp_Screen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Body(),
    );
  }
}
