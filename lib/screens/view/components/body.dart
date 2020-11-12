import 'package:combe_app/components/default_button.dart';
import 'package:combe_app/constant.dart';
import 'package:combe_app/screens/sign_in/sign_in.dart';
import 'package:combe_app/screens/view/components/view_content.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> viewData = [
    {
      "text": "Selamat Datang Di Aplikasi Pelaporan Banyuwangi",
      "image": "assets/image/ilustrasi1.png",
    },
    {
      "text": "Yuk, Laporin Jika Ada Keluh Kesah",
      "image": "assets/image/Ilustrasi2.png",
    },
    {
      "text": "Kami Siap Melayanimu",
      "image": "assets/image/Animasi3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: viewData.length,
                itemBuilder: (context, index) => ViewContent(
                  image: viewData[index]["image"],
                  text: viewData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(32)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        viewData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 2),
                    DefaultButton(
                      text: "Mulai",
                      press: () {
                        Navigator.pushNamed(context, SignIn_Screen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 12,
      width: currentPage == index ? 12 : 12,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
