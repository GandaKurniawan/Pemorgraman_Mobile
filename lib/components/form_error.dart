import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icon/error.svg",
          height: getProportionateScreenWidth(8),
          width: getProportionateScreenWidth(8),
        ),
        SizedBox(
          width: getProportionateScreenWidth(6),
        ),
        Text(error),
      ],
    );
  }
}
