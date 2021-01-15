import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class IconBtnCounter extends StatelessWidget {
  const IconBtnCounter({
    Key key,
    @required this.svgSrc,
    this.num0fItems = 0,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int num0fItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(6)),
            height: getProportionateScreenWidth(22),
            width: getProportionateScreenWidth(22),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (num0fItems != 0)
            Positioned(
              top: -1,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(8),
                width: getProportionateScreenWidth(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                    child: Text(
                  "$num0fItems",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(4),
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            )
        ],
      ),
    );
  }
}
