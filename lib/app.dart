import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loanapp/appStates/sampleState.dart';
import 'package:loanapp/screens/applyLoan/home/homeApplyLoan.dart';
import 'package:loanapp/screens/applyLoan/loanType/loanTypeScreen.dart';
import 'package:loanapp/screens/applyLoan/microfinance/microfinanceScreen.dart';
import 'package:loanapp/screens/applyLoan/steps/stepsScreen.dart';
import 'package:loanapp/screens/auth/login/loginScreen.dart';
import 'package:loanapp/screens/auth/signUp/signUpScreen.dart';
import 'package:loanapp/screens/home/homeScreen.dart';

import 'package:loanapp/screens/splashScreen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  static String appName = "loanApp";
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
              // SignUpScreen()
              HomeApplyLoan(),
        ),
        routes: {
          LoginScreen.routeName: (_) => LoginScreen(),
          SignUpScreen.routeName: (_) => SignUpScreen(),
          MicrofinanceScreen.routeName: (_) => MicrofinanceScreen(),
          HomeScreen.routeName: (_) => HomeScreen(),
          StepsScreen.routeName: (_) => StepsScreen()
        },
      ),
    );
  }
}
