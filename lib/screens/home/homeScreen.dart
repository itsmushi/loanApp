import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/screens/home/components/home_button_links.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import '../../shared/sharedComponents/text.dart';
import './components/home_drawer.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';
import './components/home_details.dart';
import 'package:loanapp/shared/sharedComponents/header.dart';

import 'components/homeButtonLink.dart';
import 'components/otherDetail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';
    selectItemHandler(String val) {
      print("selected item is $val");
    }

    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [Header()],
      ),
      body: Container(
        margin: Constants.leftRightMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Constants.spaceNextInput,
            Constants.spaceNextInput,
            CustomText(text: 'Welcome Angelo ...'),
            Constants.spaceNextInput,
            Container(
              child: HomeDetails(
                debt: "245,000",
              ),
            ),
            Constants.spaceNextInput,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeButtonLink(
                    text: "APPLY FOR LOAN",
                    clickHandler: (context) {},
                    filled: true,
                  ),
                  HomeButtonLink(
                      text: "OUTSTANDING LOANS", clickHandler: (context) {})
                ],
              ),
            ),
            Constants.spaceNextInput,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeButtonLink(
                      text: "LOAN STATEMENT", clickHandler: (context) {}),
                  HomeButtonLink(
                    text: "LOAN CALCULATOR",
                    clickHandler: (context) {},
                    filled: true,
                  ),
                ],
              ),
            ),
            Constants.spaceNextInput,
            CustomText(text: 'Others'),
            Divider(
              color: Constants.textColor,
              height: 16,
            ),
            OtherDetail("How to apply for a loan?"),
            Constants.spaceNextInput,
            OtherDetail("How to pay for a loan"),
            Constants.spaceNextInput,
            OtherDetail("FAQ"),
            Constants.spaceNextInput,
          ],
        ),
      ),
      bottomSheet: Footer(),
      drawer: Drawer(child: HomeDrawer()),
    );
  }
}
