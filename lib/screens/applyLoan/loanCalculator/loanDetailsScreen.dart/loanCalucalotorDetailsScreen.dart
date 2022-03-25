import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/shared/sharedComponents/button.dart';

import '../../../../core/constants.dart';
import '../../../../shared/sharedComponents/blueText.dart';
import '../../../../shared/sharedComponents/customTextBolded.dart';
import '../../applyLoanInside/steps/components/step3/components/barInfo.dart';

class LoanCalculatorDetailScreen extends StatefulWidget {
  LoanCalculatorDetailScreen({Key? key}) : super(key: key);

  @override
  State<LoanCalculatorDetailScreen> createState() =>
      _LoanCalculatorDetailScreenState();
}

class _LoanCalculatorDetailScreenState
    extends State<LoanCalculatorDetailScreen> {
  final Divider _divider = Divider(
    color: Constants.textColor,
    height: 20,
  );

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.leftRightMargin,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        //
        Constants.spaceNextInput,
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(color: Colors.blue[200]),
                child: AutoSizeText(
                  "Car Loan",
                  maxLines: 1,
                  minFontSize: 12,
                ),
              ),
            )
          ],
        ),
        Constants.spaceNextInput,
        Constants.spaceNextInput,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlueText("Loan amount"),
            CustomTextBolded(text: "200,000.00 TZS")
          ],
        ),
        _divider,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [BlueText("Interest rate"), CustomTextBolded(text: "13%")],
        ),
        Divider(
          color: Constants.textColor,
          height: 26,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlueText("Interest amount"),
            CustomTextBolded(text: "50,000 TZS")
          ],
        ),
        _divider,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlueText("Loan charges"),
            CustomTextBolded(text: "7,000.00 TZS")
          ],
        ),
        _divider,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlueText("Total Repayment"),
            CustomTextBolded(text: "257,000.00 TZS")
          ],
        ),
        _divider,
        Constants.spaceNextInput,
        BarInfo("Repayment period in months", "18 Months"),
        Constants.spaceNextInput,
        BarInfo("Total amount to be paid each month", "45,000.00 TZS"),

        Constants.spaceNextInput,
        Constants.spaceNextInput,
        Constants.spaceNextInput,
        Button(text: "Apply for loan", clickHandler: (context) {})
      ]),
    );
  }
}
