import 'package:flutter/material.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class Step2 extends StatelessWidget {
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
      CustomText(text: "Customer Type"),
      SizedBox(height: 8),
      CustomDropDown(items, selectItemHandler),
      SizedBox(height: 14),
      //
      CustomText(text: "Select ID Type"),
      SizedBox(height: 8),
      CustomDropDown(items, selectItemHandler),
      SizedBox(height: 14),
    ]);
  }
}
