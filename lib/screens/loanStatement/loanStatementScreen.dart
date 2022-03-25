import 'package:flutter/material.dart';
import 'package:loanapp/screens/loanStatement/components/deliveryOptions.dart';
import 'package:loanapp/screens/loanStatement/requestStatement/requestStatementScreen.dart';

import '../../core/constants.dart';
import '../../shared/sharedComponents/button.dart';
import '../../shared/sharedComponents/customDropdown.dart';
import '../../shared/sharedComponents/footer.dart';
import '../../shared/sharedComponents/text.dart';

class LoanStatementScreen extends StatefulWidget {
  static String routeName = 'LoanStatementScreen';

  @override
  State<LoanStatementScreen> createState() => _LoanStatementScreenState();
}

class _LoanStatementScreenState extends State<LoanStatementScreen> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Loan Statement"),
      ),
      body: Container(
        margin: Constants.leftRightMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Constants.spaceNextInput,
            Constants.spaceNextInput,
            //
            CustomText(text: "Select Loan Type"),
            Constants.spaceBetween,
            CustomDropDown(items, selectItemHandler),
            Constants.spaceNextInput,

            CustomText(text: "Delivery Method"),
            Divider(
              color: Constants.textColor,
              height: 16,
            ),

            const DeliveryOptions(),
            Constants.spaceNextInput,
            Constants.spaceNextInput,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                    text: "Request Statement",
                    clickHandler: (context) {
                      Navigator.of(context)
                          .pushNamed(RequestStatementScreen.routeName);
                    }),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: const Footer(),
    );
  }
}
