import 'package:flutter/material.dart';
import 'package:loanapp/screens/home/homeScreen.dart';

class LoanCalculatorScreen extends StatelessWidget {
  const LoanCalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("click"),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        },
      ),
    );
  }
}
