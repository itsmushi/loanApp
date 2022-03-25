import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/screens/home/homeScreen.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';

import '../../../core/constants.dart';
import '../../../shared/sharedComponents/button.dart';

class RequestSentScreen extends StatelessWidget {
  const RequestSentScreen({Key? key}) : super(key: key);

  static String routeName = 'RequestSentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: Constants.leftRightMargin,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Constants.defaultColor,
                      size: 42,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: AutoSizeText(
                        "Request sent successfully",
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: Constants.customStyle,
                      ),
                    ),
                    Container(
                      child: AutoSizeText(
                        "You have successfully applied for loan of Tsh 200,000.00.You will receive email/SMS confirmation soon",
                        style: Constants.customStyle,
                        minFontSize: 18,
                        maxLines: 4,
                        textAlign: TextAlign.center,
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 36),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(26, 95, 95, 95)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 24),
                      child: Button(
                          text: "Return Home",
                          clickHandler: (context) {
                            Navigator.of(
                              context,
                            ).pushReplacementNamed(HomeScreen.routeName);
                          }),
                    ),
                  ],
                ),
              ),
            ]),
      ),
      bottomSheet: Footer(),
    );
  }
}
