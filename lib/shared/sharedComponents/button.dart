import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.text, required this.clickHandler});

  Function(BuildContext context) clickHandler;
  String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {clickHandler(context)},
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 35),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );
  }
}
