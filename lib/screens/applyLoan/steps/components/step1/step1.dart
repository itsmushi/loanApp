import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import 'package:loanapp/shared/sharedComponents/customTextInput.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class Step1 extends StatelessWidget {
  TextEditingController amountController = TextEditingController();
  String dropdownvalue = 'Item 1';
  selectItemHandler(String val) {
    print("selected item is $val");
  }

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //
      CustomText(text: "Select Loan Type"),
      Constants.spaceBetween,
      CustomDropDown(items, selectItemHandler),
      Constants.spaceNextInput,
      //
      CustomText(text: "Enter Amount"),
      Constants.spaceBetween,
      CustomTextInput(amountController),
      Constants.spaceNextInput,
      //
      CustomText(text: "Repayment period in Month"),
      Constants.spaceBetween,
      CustomDropDown(items, selectItemHandler),
      Constants.spaceNextInput,
    ]);
  }
}
