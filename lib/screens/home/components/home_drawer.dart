import 'package:flutter/material.dart';
import 'package:loanapp/screens/auth/login/loginScreen.dart';
import 'package:loanapp/screens/profile/profileScreen/profileScreen.dart';
import 'package:loanapp/screens/termConditions/termConditions.dart';
import 'package:loanapp/shared/sharedComponents/customTextBolded.dart';
import 'package:loanapp/shared/sharedComponents/text.dart';

import '../../../core/constants.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Constants.spaceNextInput,
                ListTile(
                  title: Text("BUSE JOHN",
                      style:
                          TextStyle(fontSize: 26, color: Constants.textColor)),
                  subtitle: CustomText(text: "buse@gmail.com"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  color: Constants.textColor,
                  height: 16,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.account_box_rounded,
              size: 36,
            ),
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 22, color: Constants.textColor),
            ),
            onTap: () {
              Navigator.of(context).popAndPushNamed(ProfileScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.verified_user_rounded,
              size: 36,
            ),
            title: Text(
              "Terms & Conditions",
              style: TextStyle(fontSize: 22, color: Constants.textColor),
            ),
            onTap: () {
              Navigator.of(context)
                  .popAndPushNamed(TermConditionsScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              size: 36,
            ),
            title: Text(
              "Logout",
              style: TextStyle(fontSize: 22, color: Constants.textColor),
            ),
            onTap: () {
              Navigator.of(context).popAndPushNamed(LoginScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
