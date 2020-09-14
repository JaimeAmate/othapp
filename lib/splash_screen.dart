import 'package:flutter/material.dart';
import 'dart:async';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => HomeScreen()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Image(
        image: AssetImage('assets/images/splash_screen.png'),
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      )
    );
  }
}
