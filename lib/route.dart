import 'package:combe_app/screens/home/home.dart';
import 'package:combe_app/screens/login_succes/login_succes.dart';
import 'package:combe_app/screens/lupa_password/lupa_password.dart';
import 'package:combe_app/screens/sign_in/sign_in.dart';
import 'package:combe_app/screens/sign_up/sign_up.dart';
import 'package:combe_app/screens/view/view_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  View_Screen.routeName: (context) => View_Screen(),
  SignIn_Screen.routeName: (context) => SignIn_Screen(),
  LupaPassword.routeName: (context) => LupaPassword(),
  Login_Berhasil.routeName: (context) => Login_Berhasil(),
  SignUp_Screen.routeName: (context) => SignUp_Screen(),
  Home.routeName: (context) => Home(),
};
