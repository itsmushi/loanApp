import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../shared/sharedComponents/footer.dart';
import '../../shared/sharedComponents/text.dart';

class TermConditionsScreen extends StatelessWidget {
  const TermConditionsScreen({Key? key}) : super(key: key);
  static String routeName = "TermConditionsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms and Conditons"),
      ),
      body: Container(
        margin: Constants.leftRightMargin,
        child: Column(
          children: [
            Constants.spaceNextInput,
            Constants.spaceNextInput,
            //
            CustomText(text: "Terms..."),
          ],
        ),
      ),
      bottomSheet: const Footer(),
    );
  }
}
