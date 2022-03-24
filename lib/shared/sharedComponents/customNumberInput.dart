import 'package:flutter/material.dart';

class CustomNumberInput extends StatelessWidget {
  CustomNumberInput(this.inputController, {Key? key}) : super(key: key);

  TextEditingController inputController;

  InputBorder? formBorder = const OutlineInputBorder(
      gapPadding: 0, borderRadius: BorderRadius.all(Radius.circular(0)));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
        border: formBorder,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "*Required";
        } else {
          return null;
        }
      },
    );
  }
}
