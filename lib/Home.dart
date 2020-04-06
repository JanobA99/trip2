import 'package:flutter/material.dart';
import 'pages.dart';
import 'HomeWiev.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeWiev(),
    ExploreWiev(),
    HistoryWiev(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novigator'),
        backgroundColor: Colors.blueAccent,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Explore'),
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            title: Text('Past Trips'),
            icon: Icon(Icons.history),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
