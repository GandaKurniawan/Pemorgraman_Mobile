import 'package:combe_app/constant.dart';
import 'package:combe_app/screens/home/components/pelayanan_banner.dart';
import 'package:combe_app/screens/home/components/search.dart';
import 'package:combe_app/screens/home/components/section_title.dart';
import 'package:combe_app/screens/login_succes/components/icon_btn_counter.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../CameraPreview.dart';
import 'categories.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            PelayananBanner(),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            SectionTitle(
              text: "Laporan Terbaru",
              press: () {},
            ),
            SizedBox(
              width: getProportionateScreenWidth(50),
              height: getProportionateScreenWidth(10),
              // child: Image.asset(
              //   "assets/image/image1",
              // ),
            ),
            Container(
              width: getProportionateScreenWidth(180),
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (content) => CameraPreview()));
                },
                padding: EdgeInsets.all(25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF4A3298),
                child: Text('INFRASTRUKTUR ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            Container(
              width: getProportionateScreenWidth(180),
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (content) => CameraPreview()));
                },
                padding: EdgeInsets.all(25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF4A3298),
                child: Text('KESEHATAN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            Container(
              width: getProportionateScreenWidth(180),
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (content) => CameraPreview()));
                },
                padding: EdgeInsets.all(25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF4A3298),
                child: Text('KEMISKINAN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            Container(
              width: getProportionateScreenWidth(180),
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (content) => CameraPreview()));
                },
                padding: EdgeInsets.all(25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFF4A3298),
                child: Text('KRIMINAL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
