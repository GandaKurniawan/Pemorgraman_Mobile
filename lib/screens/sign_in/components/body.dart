import 'package:combe_app/components/custom_icon.dart';
import 'package:combe_app/components/default_button.dart';
import 'package:combe_app/constant.dart';
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
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
          child: Column(
            children: [
              Text(
                "Selamat Datang",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Masuk Dengan Akun yang Kamu punya atau dengan Sosial Mediamu",
                textAlign: TextAlign.center,
              ),
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          // Row(
          //   children: [
          //     SvgPicture.asset(
          //       "assets/icon/error.svg",
          //     ),
          //     SizedBox(
          //       width: getProportionateScreenWidth(10),
          //     ),
          //     Text(errors[0]),
          //   ],
          // ),
          DefaultButton(
            text: "Login",
            press: () {},
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Masukkan Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icon/lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty) {
          setState(() {
            errors.add("Mohon Masukkan Email Anda");
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Masukkan Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icon/mail.svg"),
      ),
    );
  }
}
