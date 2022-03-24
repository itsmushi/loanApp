import 'package:flutter/material.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class Step1 extends StatelessWidget {
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
      SizedBox(height: 8),
      CustomDropDown(items, selectItemHandler),
      SizedBox(height: 14),
      //
      CustomText(text: "Enter Amount"),
      SizedBox(height: 8),
      CustomDropDown(items, selectItemHandler),
      CustomText(text: "Repayment period in Month"),
      //
      SizedBox(height: 8),
      CustomDropDown(items, selectItemHandler),
      SizedBox(height: 14),
    ]);
  }
}
