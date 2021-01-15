import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF9797979);
const kTextColor = Color(0xFF464646);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Masukkan Email Anda";
const String kInvalidEmailError = "Email Anda Tidak Valid";
const String kPassNullError = "Masukkan Password Anda";
const String kShortPassError = "Password Terlalu Mudah";
const String kMatchPassError = "Password Tidak Sama";
const String kNamelNullError = "Masukkan Nama Anda";
const String kPhoneNumberNullError = "Masukkan Nomor Telephone";
const String kAddressNullError = "Please Enter your address";

// final otpInputDecoration = InputDecoration(
//   contentPadding:
//       EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
//   border: outlineInputBorder(),
//   focusedBorder: outlineInputBorder(),
//   enabledBorder: outlineInputBorder(),
// );

// OutlineInputBorder outlineInputBorder() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
//     borderSide: BorderSide(color: kTextColor),
//   );
// }
