import 'package:flutter/material.dart';

class Places extends StatefulWidget {
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/app_bar.png',
            fit: BoxFit.cover,
            height: 45
          ),
          centerTitle: true,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}),
          ],
        ),
      )
    );
  }
}
