import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

class DeliveryOptions extends StatefulWidget {
  const DeliveryOptions({Key? key}) : super(key: key);

  @override
  State<DeliveryOptions> createState() => _DeliveryOptionsState();
}

enum BestTutorSite {
  sms,
  email,
}

class _DeliveryOptionsState extends State<DeliveryOptions> {
  BestTutorSite _site = BestTutorSite.sms;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio(
              value: BestTutorSite.sms,
              groupValue: _site,
              onChanged: (BestTutorSite? value) {
                setState(() {
                  _site = value!;
                });
              },
            ),
            const SizedBox(
              width: 4,
            ),
            CustomText(text: "SMS")
          ],
        ),
        Constants.spaceBetween,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio(
              value: BestTutorSite.email,
              groupValue: _site,
              onChanged: (BestTutorSite? value) {
                setState(() {
                  _site = value!;
                });
              },
            ),
            const SizedBox(
              width: 4,
            ),
            CustomText(text: "E-mail")
          ],
        ),
      ],
    );
  }
}
