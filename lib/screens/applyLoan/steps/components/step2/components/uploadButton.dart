import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  UploadButton({required this.text, required this.clickHandler});

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
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
    );
  }
}
