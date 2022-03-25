import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';

class BlueText extends StatelessWidget {
  BlueText(this.text, {Key? key}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Constants.defaultColor,
          fontSize: 15,
          fontWeight: FontWeight.bold),
    );
  }
}
