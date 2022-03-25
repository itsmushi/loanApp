import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class RowDetail extends StatelessWidget {
  RowDetail(
    this.text,
    this.value,
  );

  String text;
  String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(text,
            style: TextStyle(
                color: Constants.defaultColor,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        CustomText(text: value)
      ],
    );
  }
}
