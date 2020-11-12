import 'package:combe_app/screens/login_succes/components/body.dart';
import 'package:flutter/material.dart';

class Login_Berhasil extends StatelessWidget {
  static String routeName = "/login_succes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Berhasil"),
      ),
      body: Body(),
    );
  }
}
