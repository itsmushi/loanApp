import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/screens/applyLoan/steps/components/step3/blueText.dart';
import 'package:loanapp/screens/applyLoan/steps/components/step3/components/customTextBolded.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class Step3 extends StatelessWidget {
  String dropdownvalue = 'Item 1';
  selectItemHandler(String val) {
    print("selected item is $val");
  }

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
  ];
  final Divider _divider = Divider(
    color: Constants.textColor,
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      //
      Constants.spaceNextInput,
      CustomText(text: "Confirm Loan Details"),
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
    ]);
  }
}
