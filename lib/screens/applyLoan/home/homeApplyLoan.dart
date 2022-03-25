import 'package:flutter/material.dart';
import 'package:loanapp/screens/applyLoan/home/components/tabNavigator.dart';
import 'package:loanapp/screens/applyLoan/loanCalculator/loanCalculatorScreen.dart';

import 'package:loanapp/shared/sharedComponents/footer.dart';

class HomeApplyLoan extends StatefulWidget {
  const HomeApplyLoan({Key? key}) : super(key: key);

  @override
  State<HomeApplyLoan> createState() => _HomeApplyLoanState();
}

class _HomeApplyLoanState extends State<HomeApplyLoan> {
  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "LoanType": GlobalKey<NavigatorState>(),
    "LoanCalculator": GlobalKey<NavigatorState>()
  };
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: WillPopScope(
          onWillPop: () async {
            final isFirstRouteInCurrentTab =
                !await _navigatorKeys.values.last.currentState!.maybePop();

            return isFirstRouteInCurrentTab; //if this is false route will not be pooped
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Apply Loan"),
              // ignore: prefer_const_constructors
              bottom: TabBar(
                tabs: const [
                  Tab(text: "Apply For Loan"),
                  Tab(text: "Loan Calculator")
                ],
              ),
            ),
            body: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: TabBarView(
                children: [
                  Offstage(
                    offstage: false,
                    child: TabNavigator(
                        navigatorKey: _navigatorKeys.values.first,
                        tabItem: "LoanType"),
                  ),
                  Offstage(
                    offstage: false,
                    child: TabNavigator(
                        navigatorKey: _navigatorKeys.values.last,
                        tabItem: "LoanCalculator"),
                  ),
                ],
              ),
            ),
            bottomSheet: Footer(),
          ),
        ));
  }
}
