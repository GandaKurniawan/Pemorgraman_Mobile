import 'package:combe_app/route.dart';
import 'package:combe_app/screens/view/view_screen.dart';
import 'package:combe_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:combe_app/constant.dart';
import 'package:combe_app/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: View_Screen(),
      initialRoute: View_Screen.routeName,
      routes: routes,
    );
  }
}
