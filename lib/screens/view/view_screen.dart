import 'package:combe_app/screens/view/components/body.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';

class View_Screen extends StatelessWidget {
  static String routeName = "/view";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
