import 'package:flutter/material.dart';
import 'package:loanapp/screens/home/homeScreen.dart';
import 'package:loanapp/shared/sharedComponents/button.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';
import 'package:loanapp/shared/sharedComponents/customTextInput.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = "singUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController fnController = TextEditingController();
  TextEditingController lnController = TextEditingController();
  TextEditingController pnController = TextEditingController();

  TextEditingController repeatPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
        title: const Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 18,
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomText(text: "First Name"),
                            ],
                          ),
                          Padding(
                              padding: _edgeInsets,
                              child: CustomTextInput(fnController)),
                          Row(
                            children: [
                              CustomText(text: "Last Name"),
                            ],
                          ),
                          Padding(
                              padding: _edgeInsets,
                              child: CustomTextInput(lnController)),
                          Row(
                            children: [
                              CustomText(text: "Email"),
                            ],
                          ),
                          Padding(
                              padding: _edgeInsets,
                              child: CustomTextInput(emailController)),
                          Row(
                            children: [
                              CustomText(text: "Phone Numer"),
                            ],
                          ),
                          Padding(
                              padding: _edgeInsets,
                              child: CustomTextInput(emailController)),
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
                            children: [
                              CustomText(text: "Re-type Password"),
                            ],
                          ),
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
                                    _isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, bottom: 24),
                                child: Button(
                                    text: "REGISTER",
                                    clickHandler: onSubmittingForm),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: "Already have an account?"),
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
                                  "Login",
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
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
