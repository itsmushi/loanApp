import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';

class Message extends StatelessWidget {
  Message({required this.text, Key? key}) : super(key: key);
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(26, 141, 138, 138),
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25, color: Constants.textColor),
      ),
    );
  }
}
