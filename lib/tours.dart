import 'package:flutter/material.dart';

class Tours extends StatefulWidget {
  State<Tours> createState() => _ToursState();
}

class _ToursState extends State<Tours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
            'assets/images/app_bar.png',
            fit: BoxFit.cover,
            height: 45
        ),
        centerTitle: true
      ),
    );
  }
}
