import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/customTextBolded.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class LoanRowDetail extends StatelessWidget {
  LoanRowDetail(
    this.text,
    this.value,
  );

  String text;
  String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(text,
              style: TextStyle(
                  color: Constants.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal)),
          CustomTextBolded(text: value)
        ],
      ),
    );
  }
}
