import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/customTextBolded.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class LoanRowDetailStatus extends StatelessWidget {
  LoanRowDetailStatus(
    this.text,
    this.value,
  );

  String text;
  String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(text,
              style: TextStyle(
                  color: Constants.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal)),
          Container(
            child: CustomText(
              text: value,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red),
          )
        ],
      ),
    );
  }
}
