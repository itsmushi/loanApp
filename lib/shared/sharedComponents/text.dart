import 'dart:ui';

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, color: Colors.black54),
    );
  }
}
