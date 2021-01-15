import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icon/Discover.svg", "text": "Desa"},
      {"icon": "assets/icon/Discover.svg", "text": "Kota"},
      {"icon": "assets/icon/Discover.svg", "text": "Dusun"},
      {"icon": "assets/icon/Discover.svg", "text": "Sekolah"},
      {"icon": "assets/icon/Discover.svg", "text": "Lainnya"},
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                press: () {}),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(25),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(6)),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
