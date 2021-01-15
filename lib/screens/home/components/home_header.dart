import 'package:combe_app/screens/home/components/search.dart';
import 'package:combe_app/screens/login_succes/components/icon_btn_counter.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnCounter(
            svgSrc: "assets/icon/Bell.svg",
            num0fItems: 2,
            press: () {},
          ),
          // IconBtnCounter(
          //   svgSrc: "assets/icon/Bell.svg",
          //   num0fItems: 2,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
