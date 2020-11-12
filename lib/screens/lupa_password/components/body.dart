import 'package:combe_app/components/custom_icon.dart';
import 'package:combe_app/components/default_button.dart';
import 'package:combe_app/components/form_error.dart';
import 'package:combe_app/components/no_account.dart';
import 'package:combe_app/constant.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenWidth * 0.04),
              Text(
                "Lupa Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Silahkan Masukkan Password Lama Anda",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenWidth * 0.1),
              LupaPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LupaPasswordForm extends StatefulWidget {
  @override
  _LupaPasswordFormState createState() => _LupaPasswordFormState();
}

class _LupaPasswordFormState extends State<LupaPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
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
          ),
          SizedBox(
            height: getProportionateScreenWidth(16),
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenWidth * 0.1),
          DefaultButton(
            text: "Lanjutkan",
            press: () {
              if (_formKey.currentState.validate()) {
                //Lupa Password
              }
            },
          ),
          SizedBox(height: SizeConfig.screenWidth * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
