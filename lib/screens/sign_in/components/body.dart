import 'package:combe_app/components/custom_icon.dart';
import 'package:combe_app/components/default_button.dart';
import 'package:combe_app/components/form_error.dart';
import 'package:combe_app/components/no_account.dart';
import 'package:combe_app/components/sosial_card.dart';
import 'package:combe_app/constant.dart';
import 'package:combe_app/screens/lupa_password/lupa_password.dart';
import 'package:combe_app/screens/sign_in/components/sign_form.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.02),
                Text(
                  "Masuk Dengan Akun yang Kamu punya atau dengan Sosial Mediamu",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.04),
                SignForm(),
                SizedBox(height: SizeConfig.screenWidth * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SosialCard(
                      icon: "assets/icon/google.svg",
                      press: () {},
                    ),
                    SosialCard(
                      icon: "assets/icon/facebook.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(16)),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
