import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/screens/profile/profileScreen/profileScreen.dart';
import 'package:loanapp/shared/sharedComponents/button.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  static String routeName = "ChangePasswordScreen";

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  final EdgeInsets _edgeInsets = EdgeInsets.only(top: 4, bottom: 15);
  bool _isHidden = true;
  InputBorder? formBorder = const OutlineInputBorder(
      gapPadding: 0, borderRadius: BorderRadius.all(Radius.circular(0)));

  onSubmittingForm(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      print("Validated");

      print(passwordController.text);
      Navigator.of(context).pushReplacementNamed(ProfileScreen.routeName);
    } else {
      print("Not Validated");
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
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Constants.spaceNextInput,
                  Constants.spaceNextInput,
                  CustomText(text: "Old Password"),
                  Padding(
                    padding: _edgeInsets,
                    child: TextFormField(
                      controller: oldPasswordController,
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
                  CustomText(text: "New Password"),
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
                  CustomText(text: "Re-type Password"),
                  Padding(
                    padding: _edgeInsets,
                    child: TextFormField(
                      controller: repeatPasswordController,
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
                        }
                        if (value != passwordController.text) {
                          return "password do not match";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Constants.spaceNextInput,
                  Constants.spaceNextInput,
                  Constants.spaceNextInput,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(text: "Change", clickHandler: onSubmittingForm)
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
