import 'package:flutter/material.dart';
import 'package:udemy_flutter/pages/Home.dart';
import 'package:udemy_flutter/pages/Setting.dart';
import 'package:udemy_flutter/pages/profile.dart';

import 'todo_page.dart';

class FirstPage extends StatefulWidget {

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateToPage(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<StatelessWidget> _pages = [
    Home(),
    Profile(),
    Setting()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('First Page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateToPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting'
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            DrawerHeader(
              child:
               Icon(Icons.account_circle, size: 80, color: Colors.white)),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white), 
              title: Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                _navigateToPage(0);
              },
            ),
             ListTile(
              leading: Icon(Icons.settings, color: Colors.white), 
              title: Text('Setting', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                _navigateToPage(2);
              },
            ),
             ListTile(
              leading: Icon(Icons.note, color: Colors.white), 
              title: Text('To Do List', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ToDoPage()));
              },
            ),
            
          ]
        ),
      ),
    );
  }
}