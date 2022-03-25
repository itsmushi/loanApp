import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BarInfo extends StatelessWidget {
  BarInfo(this.text, this.value, {Key? key}) : super(key: key);

  String text;
  String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(color: Colors.blue[200]),
            child: AutoSizeText(
              text,
              maxLines: 1,
              minFontSize: 12,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(color: Colors.blue),
            child: AutoSizeText(
              value,
              maxLines: 1,
              minFontSize: 12,
            ),
          ),
        )
      ],
    );
  }
}
