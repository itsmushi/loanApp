import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/button.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';

import '../home/homeScreen.dart';
import 'message.dart';

class LoanResponse extends StatelessWidget {
  const LoanResponse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outlined,
              color: Colors.blue,
              size: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Request Sent Succesfully",style: TextStyle(
                color: Constants.textColor,
                fontSize: 25,
              ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.all(15),
              child: Message(
                text:
                    'You have succesfully applied for loan of Tsh200,000.00. You will receive email/SMS confirmation soon',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Button(text: 'Return home', clickHandler: onSubmithandler),
          ],
        ),
      ),
      bottomSheet: Footer(),
    );
  }

  onSubmithandler(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }
}
