import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/button.dart';
import 'package:loanapp/shared/sharedComponents/customTextInput.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

import '../home/homeScreen.dart';

class ConfrimLoan extends StatelessWidget {
  ConfrimLoan({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(15),
                child: Icon(Icons.cancel)),
            SizedBox(height: 200,),
            Center(
              child: Column(
                children: [
                  CustomText(text: 'Enter your password to confirm this request'),
                  // SizedBox(
                  // height: 10,
                  // ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child:CustomTextInput(passwordController) ,
                  ),

                  // SizedBox(
                  // height: 10,
                  // ),
                  Button(text: 'Confirm', clickHandler: onSubmithandler),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ) ,
      bottomSheet: Footer(),
    );
  }

  onSubmithandler(BuildContext context) {
    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

    TextEditingController passwordController = TextEditingController();
    if (_formkey.currentState!.validate()) {
      print("Validated");
      print(passwordController.text);
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    } else {
      print("Not Validated");
    }
  }
}
