import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/button.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

import '../home/homeScreen.dart';
import '../signUp/signUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String routeName = 'loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool _isHidden = true;

  InputBorder? formBorder = const OutlineInputBorder(
      gapPadding: 0, borderRadius: BorderRadius.all(Radius.circular(0)));

  final EdgeInsets _edgeInsets = EdgeInsets.only(top: 4, bottom: 15);

  onSubmittingForm(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      print("Validated");
      print(emailController.text);
      print(passwordController.text);
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    } else {
      print("Not Validated");

      Navigator.of(context).pushReplacementNamed(
          HomeScreen.routeName); //remove this later  its just for dev
    }
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            height: MediaQuery.of(context).size.height * 0.90,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  const Text(
                    "logo",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 18,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CustomText(text: "Username"),
                              ],
                            ),
                            Padding(
                              padding: _edgeInsets,
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 4.0, horizontal: 8),
                                  border: formBorder,
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
                            Row(
                              children: [
                                CustomText(text: "Password"),
                              ],
                            ),
                            Padding(
                              padding: _edgeInsets,
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
                                      _isHidden
                                          ? Icons.visibility
                                          : Icons.visibility_off,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, bottom: 24),
                                  child: Button(
                                      text: "Sign In",
                                      clickHandler: onSubmittingForm),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(text: "Don't have an account?"),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("send to register activity");
                                    Navigator.of(context)
                                        .pushNamed(SignUpScreen.routeName);
                                  },
                                  child: const Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontFamily: 'PoppinsBold'),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
