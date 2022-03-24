import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';

class CustomText extends StatelessWidget {
  CustomText({required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Constants.customStyle,
    );
  }
}
