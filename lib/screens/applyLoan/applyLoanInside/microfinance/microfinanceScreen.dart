import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';

import 'package:loanapp/shared/sharedComponents/button.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

import '../steps/stepsScreen.dart';

class MicrofinanceScreen extends StatelessWidget {
  static String routeName = 'MicrofinanceScreen';
  String dropdownvalue = 'Item 1';
  selectItemHandler(String val) {
    print("selected item is $val");
  }

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.leftRightMargin,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(text: "Select Loan Type"),
        Constants.spaceBetween,
        CustomDropDown(items, selectItemHandler),
        Constants.spaceNextInput,
        CustomText(text: "Select Microfinance"),
        Constants.spaceBetween,
        CustomDropDown(items, selectItemHandler),
        Constants.spaceNextInput,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Button(
                text: "Continue",
                clickHandler: (context) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StepsScreen()));
                }),
          ],
        ),
      ]),
    );
  }
}
