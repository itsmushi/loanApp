import 'package:flutter/material.dart';
import 'package:loanapp/screens/home/components/home_button_links.dart';
import 'package:loanapp/shared/sharedComponents/customDropdown.dart';
import '../../shared/sharedComponents/text.dart';
import './components/home_drawer.dart';
import 'package:loanapp/shared/sharedComponents/footer.dart';
import './components/home_details.dart';
import 'package:loanapp/shared/sharedComponents/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';
    selectItemHandler(String val) {
      print("selected item is $val");
    }
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          Header()
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(15),
              child: CustomText( text: 'Welcome Angelo ...'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: HomeDetails(),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeButtonLinks(text: "APPLY FOR LOAN"),
                      HomeButtonLinks(text: "APPLY FOR LOAN"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeButtonLinks(text: "APPLY FOR LOAN"),
                      HomeButtonLinks(text: "APPLY FOR LOAN"),
                    ],
                  )
                ],
              ),
            ),
           Container(
             alignment: Alignment.centerLeft,
             padding: EdgeInsets.all(15),
             child: CustomText( text: 'Others'),
           ) ,
            Divider(),
            CustomDropDown(items, selectItemHandler),
            SizedBox(
              height: 10,
            ),
            CustomDropDown(items, selectItemHandler),
            SizedBox(
              height: 10,
            ),
            CustomDropDown(items, selectItemHandler),
            SizedBox(
              height: 10,
            ),

            Footer()
          ],
        ),
      ),
      drawer: Drawer(child: HomeDrawer()),
    );
  }
}
