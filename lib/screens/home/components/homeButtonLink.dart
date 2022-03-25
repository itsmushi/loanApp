import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';

class HomeButtonLink extends StatelessWidget {
  HomeButtonLink(
      {required this.text, required this.clickHandler, this.filled = false});

  Function(BuildContext context) clickHandler;
  String text;
  bool filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: () => {clickHandler(context)},
        child: AutoSizeText(
          text,
          maxLines: 2,
          minFontSize: 14,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: filled ? Colors.white : Constants.defaultColor),
        ),
        style: ElevatedButton.styleFrom(
          primary: filled ? Constants.defaultColor : Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
