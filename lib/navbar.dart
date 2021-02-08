import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:movies_app/filmScreen.dart';
import 'package:movies_app/serialScreen.dart';


/// This is the stateful widget that the main application instantiates.
class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBar createState() => _NavBar();
}

/// This is the private State class that goes with MyStatefulWidget.
class _NavBar extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    FilmScreen(),
    SerialScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
         icon: Icon(
           Icons.movie_creation_outlined,
           color: Colors.white),
         title: Text(
           'Film',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 14),
         ),
       ),
       BottomNavigationBarItem(
         icon: Icon(
           Icons.live_tv,
           color: Colors.white),
         title: Text(
           'Serial',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 14),
         ),
       ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}