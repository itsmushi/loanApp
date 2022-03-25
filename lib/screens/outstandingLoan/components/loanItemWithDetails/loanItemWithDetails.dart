import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../../../shared/sharedComponents/text.dart';
import 'components/loanRowDetail.dart';
import 'components/loanRowDetailStatus.dart';

class LoanItemWithDetails extends StatelessWidget {
   LoanItemWithDetails(this.title,{Key? key}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: const ExpandableThemeData(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        tapBodyToExpand: true,
        tapBodyToCollapse: true,
        hasIcon: false,
      ),
      header: Container(
        color: Colors.blue[200],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: CustomText(text: title),
              ),
              ExpandableIcon(
                theme: const ExpandableThemeData(
                  expandIcon: Icons.keyboard_arrow_down,
                  collapseIcon: Icons.keyboard_arrow_up,
                  iconColor: Colors.white,
                  iconSize: 28.0,
                  iconPadding: EdgeInsets.only(right: 5),
                  hasIcon: false,
                ),
              ),
            ],
          ),
        ),
      ),
      collapsed: Text(""),
      expanded: Container(
        margin: EdgeInsets.only(left: 12, right: 8),
        child: Column(children: [
          LoanRowDetail("Total amount borrowed", "1,300,000 TZS"),
          LoanRowDetail("Total amount paid ", "100,000 TZS"),
          LoanRowDetail("Total amount unpaid ", "1,200,000 TZS"),
          LoanRowDetail("Time left ", "3 Months"),
          LoanRowDetailStatus("Loan Status", "Status"),
        ]),
      ),
    );
  }
}
