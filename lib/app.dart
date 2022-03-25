import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loanapp/appStates/sampleState.dart';

import 'package:loanapp/screens/applyLoan/home/homeApplyLoan.dart';

import 'package:loanapp/screens/auth/login/loginScreen.dart';
import 'package:loanapp/screens/auth/signUp/signUpScreen.dart';
import 'package:loanapp/screens/home/homeScreen.dart';
import 'package:loanapp/screens/loanStatement/loanStatementScreen.dart';
import 'package:loanapp/screens/outstandingLoan/outstandingLoan.dart';
import 'package:loanapp/screens/profile/changePasswordScreen/changePasswordScreen.dart';
import 'package:loanapp/screens/profile/profileScreen/profileScreen.dart';
import 'package:loanapp/screens/splashScreen.dart';
import 'package:loanapp/screens/termConditions/termConditions.dart';
import 'package:loanapp/screens/auth/login/loginScreen.dart';
import 'package:loanapp/screens/auth/signUp/signUpScreen.dart';
import 'package:loanapp/screens/home/homeScreen.dart';
import 'package:provider/provider.dart';

import 'screens/applyLoan/applyLoanInside/microfinance/microfinanceScreen.dart';
import 'screens/applyLoan/applyLoanInside/steps/stepsScreen.dart';

class MyApp extends StatefulWidget {
  static String appName = "loanApp";

  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      // DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [ChangeNotifierProvider.value(value: SampleState())],
        child: MaterialApp(
          title: 'Loan App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SafeArea(
              child:
                  //  LoginScreen(),
                  HomeScreen()
              // SignUpScreen()
              // HomeApplyLoan(),
              // ProfileScreen()
              // OutstandingLoanScreen()
              // LoanStatementScreen()
              //
              ),
          routes: {
            LoginScreen.routeName: (_) => LoginScreen(),
            SignUpScreen.routeName: (_) => SignUpScreen(),
            MicrofinanceScreen.routeName: (_) => MicrofinanceScreen(),
            HomeScreen.routeName: (_) => HomeScreen(),
            StepsScreen.routeName: (_) => StepsScreen(),
            ProfileScreen.routeName: (_) => ProfileScreen(),
            ChangePasswordScreen.routeName: (_) => ChangePasswordScreen(),
            OutstandingLoanScreen.routeName: (_) => OutstandingLoanScreen(),
            LoanStatementScreen.routeName: (_) => LoanStatementScreen(),
            TermConditionsScreen.routeName: (_) => TermConditionsScreen()
          },
        ));
  }
}
