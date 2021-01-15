import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PelayananBanner extends StatelessWidget {
  const PelayananBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      // height: 120,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "Laporkan Permasalahan\n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: "24 Jam Pelayanan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
