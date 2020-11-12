import 'package:combe_app/screens/lupa_password/components/body.dart';
import 'package:flutter/material.dart';

class LupaPassword extends StatelessWidget {
  static String routeName = "/lupa_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lupa Password"),
      ),
      body: Body(),
    );
  }
}
