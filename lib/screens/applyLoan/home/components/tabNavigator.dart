import 'package:flutter/material.dart';
import 'package:loanapp/screens/applyLoan/applyLoanInside/loanType/loanTypeScreen.dart';
import 'package:loanapp/screens/applyLoan/applyLoanInside/password/passwordScreen.dart';
import 'package:loanapp/screens/applyLoan/applyLoanInside/steps/stepsScreen.dart';
import 'package:loanapp/screens/applyLoan/loanCalculator/loanCalculatorScreen.dart';
import 'package:loanapp/screens/applyLoan/requestSent/requestSentScreen.dart';

class TabNavigator extends StatelessWidget {
//  TabNavigator(
//       { required this.navigatorKey, required this.tabItem})

//    GlobalKey<NavigatorState> navigatorKey;
//    String tabItem;

  final GlobalKey<NavigatorState> navigatorKey;

  const TabNavigator(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);

  final String tabItem;
  @override
  Widget build(BuildContext context) {
    Widget child = Container();

    switch (tabItem) {
      case "LoanType":
        {
          child = LoanTypeScreen();
          // child = RequestSentScreen();
          break;
        }

      case "LoanCalculator":
        {
          child = LoanCalculatorScreen();
          break;
        }

      default:
        {
          //statements;
        }
        break;
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
