import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../shared/sharedComponents/button.dart';
import '../../../../shared/sharedComponents/text.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  static String routeName = 'PasswordScreen';

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController passwordController = new TextEditingController();
  bool _isHidden = true;
  onSubmittingForm(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      print("Validated");

      print(passwordController.text);
      // Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    } else {
      print("Not Validated");
    }
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  InputBorder? formBorder = const OutlineInputBorder(
      gapPadding: 0, borderRadius: BorderRadius.all(Radius.circular(0)));
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.leftRightMargin,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: AutoSizeText(
                      "Enter your password to confirm this request",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Constants.customStyle,
                    ),
                  ),
                  Form(
                    key: _formkey,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8),
                        border: formBorder,
                        suffix: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "*Required";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 24),
                    child:
                        Button(text: "Confirm", clickHandler: onSubmittingForm),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
