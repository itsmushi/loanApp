import 'package:flutter/material.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(26, 141, 138, 138),
      height: MediaQuery.of(context).size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CustomText(text: "© 2022 - Loan App")],
      ),
    );
  }
}
