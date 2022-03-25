import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';

class CustomTextBolded extends StatelessWidget {
  CustomTextBolded({required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 15, color: Colors.black54, fontWeight: FontWeight.bold),
    );
  }
}
