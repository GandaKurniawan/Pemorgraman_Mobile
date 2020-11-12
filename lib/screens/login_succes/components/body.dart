import 'package:combe_app/components/default_button.dart';
import 'package:combe_app/screens/home/home.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenWidth * 0.08,
        ),
        Image.asset(
          "assets/image/success.png",
          height: SizeConfig.screenWidth * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenWidth * 0.08,
        ),
        Text(
          "Berhasil Login",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.16,
          child: DefaultButton(
            text: "Beranda",
            press: () => Navigator.pushNamed(context, Home.routeName),
          ),
        ),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
