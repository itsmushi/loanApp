import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/screens/applyLoan/steps/components/step2/components/uploadButton.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class UploadLetter extends StatelessWidget {
  UploadLetter(this.text, {Key? key}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.width * 0.08,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Constants.defaultColor,
                      width: 2.5,
                      style: BorderStyle.solid)),
              child: Icon(
                Icons.done,
                color: Constants.defaultColor,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            CustomText(text: text)
          ],
        ),
        UploadButton(text: "Upload", clickHandler: (context) {})
      ],
    );
  }
}
