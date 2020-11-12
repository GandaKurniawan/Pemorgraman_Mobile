import 'package:combe_app/screens/sign_up/sign_up.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Belum Punya Akun? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(8)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUp_Screen.routeName),
          child: Text(
            "Register",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(8), color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
