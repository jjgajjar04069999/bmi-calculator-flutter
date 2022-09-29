import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CardContent extends StatelessWidget {
  CardContent({this.genderIcon, this.label});

  final IconData? genderIcon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
