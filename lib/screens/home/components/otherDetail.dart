import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../../../shared/sharedComponents/text.dart';

class OtherDetail extends StatelessWidget {
  OtherDetail(this.title, {Key? key}) : super(key: key);

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
          CustomText(text: "More info"),
          CustomText(text: "More info"),
        ]),
      ),
    );
  }
}
