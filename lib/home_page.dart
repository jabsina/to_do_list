       import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Pages for each tab
  static const List<Widget> _pages = <Widget>[
    Center(child: Text(" Task", style: TextStyle(fontSize: 24))),
    Center(child: Text(" Calender", style: TextStyle(fontSize: 24))),
    Center(child: Text(" Habit", style: TextStyle(fontSize: 24))),
  ];

  // When a tab is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // show the page based on index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue, // active icon color
        unselectedItemColor: Colors.grey, // inactive icon color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Habit',
          ),
        ],
      ),
    );
  }
}

