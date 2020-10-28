import 'package:flutter/material.dart';
import 'package:combe_app/size_config.dart';

import '../../../constant.dart';

class ViewContent extends StatelessWidget {
  const ViewContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "COMBE",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(24),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenWidth(120),
          width: getProportionateScreenWidth(180),
        ),
      ],
    );
  }
}
