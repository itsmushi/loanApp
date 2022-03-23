import 'package:flutter/material.dart';
import 'package:loanapp/app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.appName),
      ),
      body: Center(
        child: Text("splash"),
      ),
    );
  }
}
