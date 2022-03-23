import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loanapp/appStates/sampleState.dart';
import 'package:loanapp/screens/login/loginScreen.dart';
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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: SplashScreen(),
          // child: ListDadaScreen(),
        ),
        routes: {
          LoginScreen.routeName: (_) => LoginScreen(),
        },
      ),
    );
  }
}
