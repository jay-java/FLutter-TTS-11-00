import 'package:flutter/material.dart';
import 'package:flutter_design/pages/account.dart';
import 'package:flutter_design/pages/chat.dart';
import 'package:flutter_design/pages/home.dart';
import 'package:flutter_design/pages/settings.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _bottomNavigation(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    Home(),
    Chat(),
    Setting(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
        backgroundColor: Colors.green,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        // showSelectedLabels: false,
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: _bottomNavigation,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}