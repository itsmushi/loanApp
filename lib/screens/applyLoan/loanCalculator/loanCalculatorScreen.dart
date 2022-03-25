import 'package:flutter/material.dart';
import 'package:loanapp/screens/applyLoan/loanCalculator/loanDetailsScreen.dart/loanCalucalotorDetailsScreen.dart';
import 'package:loanapp/screens/home/homeScreen.dart';
import 'package:loanapp/shared/sharedComponents/customNumberInput.dart';

import '../../../core/constants.dart';
import '../../../shared/sharedComponents/button.dart';
import '../../../shared/sharedComponents/customDropdown.dart';
import '../../../shared/sharedComponents/text.dart';
import '../applyLoanInside/steps/stepsScreen.dart';

class LoanCalculatorScreen extends StatelessWidget {
  LoanCalculatorScreen({Key? key}) : super(key: key);

  TextEditingController amountController = TextEditingController();
  TextEditingController monthPeriodController = TextEditingController();
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  selectItemHandler(String val) {
    print("selected item is $val");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.leftRightMargin,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Constants.spaceNextInput,
        Constants.spaceNextInput,
        CustomText(text: "Select Loan Type"),
        Constants.spaceBetween,
        CustomDropDown(items, selectItemHandler),
        Constants.spaceNextInput,
        //
        CustomText(text: "Enter Loan Amount"),
        Constants.spaceBetween,
        CustomNumberInput(amountController),
        Constants.spaceNextInput,
        //
        CustomText(text: "Loan Period in months"),
        Constants.spaceBetween,
        CustomNumberInput(monthPeriodController),
        Constants.spaceNextInput,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Button(
                text: "Continue",
                clickHandler: (context) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoanCalculatorDetailScreen()));
                }),
          ],
        ),
      ]),
    );
  }
}
