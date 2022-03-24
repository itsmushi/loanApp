import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/button.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class LoanTypeScreen extends StatefulWidget {
  @override
  State<LoanTypeScreen> createState() => _LoanTypeScreenState();
}

class _LoanTypeScreenState extends State<LoanTypeScreen> {
  // Initial Selected Value
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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          margin: EdgeInsets.symmetric(vertical: 24),
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 240, 214, 130),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: [
              const Icon(
                Icons.error_outline,
                color: Color.fromARGB(255, 242, 156, 28),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const AutoSizeText(
                  "Before you apply for loan, check the limit on how much you qualify for each type of loan",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                  minFontSize: 12,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        CustomText(text: "Select Loan Type"),
        SizedBox(height: 8),
        CustomDropDown(items, selectItemHandler),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Button(text: "Check for loan limit", clickHandler: (context) {}),
          ],
        ),
      ]),
    );
  }
}
