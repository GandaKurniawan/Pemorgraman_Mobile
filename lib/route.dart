// import 'dart:js';
import 'package:combe_app/screens/sign_in/sign_in.dart';
import 'package:combe_app/screens/view/view_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  View_Screen.routeName: (context) => View_Screen(),
  SignIn_Screen.routeName: (context) => SignIn_Screen(),
};
