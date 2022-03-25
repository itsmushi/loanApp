import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/screens/outstandingLoan/components/loanItemWithDetails/loanItemWithDetails.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';
import 'package:expandable/expandable.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class OutstandingLoanScreen extends StatelessWidget {
  const OutstandingLoanScreen({Key? key}) : super(key: key);
  static String routeName = 'OutstandingLoanScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Outstanding Loans"),
      ),
      body: Container(
        margin: Constants.leftRightMargin,
        child: Column(
          children: [
            Constants.spaceNextInput,
            Constants.spaceNextInput,
            LoanItemWithDetails("Bodaboda Loan"),
            LoanItemWithDetails("Car Loan"),
            LoanItemWithDetails("Personal Loan"),
          ],
        ),
      ),
      bottomSheet: const Footer(),
    );
  }
}
