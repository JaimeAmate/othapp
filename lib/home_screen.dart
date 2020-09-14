import 'package:flutter/material.dart';
import 'package:othapp/map.dart';
import 'package:othapp/places.dart';
import 'package:othapp/tours.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<StatefulWidget> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final  List<Widget> _widgetOptions = <Widget>[
    Places(),
    Map(),
    Tours()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            title: Text('Places')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            title: Text('Map')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Tours')
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
