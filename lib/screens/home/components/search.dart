import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.4,
      height: 50,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {
          //cari
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Cari Laporan",
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(4),
              vertical: getProportionateScreenWidth(4)),
        ),
      ),
    );
  }
}
