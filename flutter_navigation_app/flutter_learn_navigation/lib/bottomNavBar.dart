import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex = 1;
  void _onTapItem(int index) {
    //set index
    setState(() {
      _selectedIndex = index;
    });

    //set router
    String routeName = '/';
    switch (_selectedIndex) {
      case 0:
        routeName = '/B';
        break;
      case 1:
        routeName = '/';
        break;
      case 2:
        routeName = '/C';
        break;
    }
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.redAccent,
        selectedFontSize: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Personal Info'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_support), label: 'Support')
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapItem);
  }
}
