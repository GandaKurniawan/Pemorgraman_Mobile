import 'package:combe_app/components/custom_icon.dart';
import 'package:combe_app/components/default_button.dart';
import 'package:combe_app/components/form_error.dart';
import 'package:combe_app/components/sosial_card.dart';
import 'package:combe_app/screens/sign_up/components/signup_form.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:combe_app/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenWidth * 0.02,
              ),
              Text(
                "Register Akun",
                style: headingStyle,
              ),
              Text(
                "Silahkan Lengkap Data Diri Anda",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenWidth * 0.06,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenWidth * 0.04,
              ),
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
              SizedBox(
                height: getProportionateScreenWidth(8),
              ),
              Text("Setuju Dengan Semua Persyaratan Untuk Mendaftar Aplikasi",
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
