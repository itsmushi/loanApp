import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

import 'components/barInfo.dart';
import '../../../../../../shared/sharedComponents/blueText.dart';
import '../../../../../../shared/sharedComponents/customTextBolded.dart';

class Step3 extends StatefulWidget {
  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  String dropdownvalue = 'Item 1';
  bool value = false;

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
      _divider,
      Constants.spaceNextInput,
      BarInfo("Repayment period in months", "18 Months"),
      Constants.spaceNextInput,
      BarInfo("Total amount to be paid each month", "45,000.00 TZS"),
      Constants.spaceBetween,
      Row(
        children: [
          Checkbox(
            value: this.value,
            onChanged: (bool? value) {
              setState(() {
                this.value = value!;
              });
            },
          ),
          const Text(
            "Agree to terms and conditions",
            style: TextStyle(fontSize: 14, color: Colors.black54),
          )
        ],
      )
    ]);
  }
}
