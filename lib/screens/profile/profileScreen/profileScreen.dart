import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';
import 'package:loanapp/screens/profile/changePasswordScreen/changePasswordScreen.dart';

import 'package:loanapp/shared/sharedComponents/button.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';

import 'components/rowDetail.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 36),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Constants.spaceNextInput,
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.account_circle,
                  size: 84,
                  color: Constants.defaultColor,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Icon(
                  Icons.edit_outlined,
                  size: 40,
                  color: Constants.defaultColor,
                ),
              ]),
              Constants.spaceNextInput,
              Divider(
                height: 24,
                color: Constants.textColor,
              ),
              Constants.spaceNextInput,
              RowDetail("First Name", "Buse"),
              Constants.spaceNextInput,
              Constants.spaceNextInput,
              RowDetail("Last Name", "John"),
              Constants.spaceNextInput,
              Constants.spaceNextInput,
              RowDetail("Email", "buse@gmail.com"),
              Constants.spaceNextInput,
              Constants.spaceNextInput,
              RowDetail("Phone", "+255 719000000"),
              Constants.spaceNextInput,
              Constants.spaceNextInput,
              Constants.spaceNextInput,
              Constants.spaceNextInput,
              Button(
                  text: "Change Password",
                  clickHandler: (context) => {
                        Navigator.of(context)
                            .pushNamed(ChangePasswordScreen.routeName)
                      })
            ],
          ),
        ),
      ),
      bottomSheet: Footer(),
    );
  }
}
