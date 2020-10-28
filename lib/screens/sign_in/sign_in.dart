import 'package:combe_app/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignIn_Screen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Body(),
    );
  }
}
