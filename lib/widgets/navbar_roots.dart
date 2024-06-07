import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentalapp/pages/home_page.dart';
class NavbarRoots extends StatefulWidget {
  const NavbarRoots({super.key});

  @override
  State<NavbarRoots> createState() => _NavbarRootsState();
}

class _NavbarRootsState extends State<NavbarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    // Home Screen
    HomePage(),
    // message screen
    Container(),

    // schedule screen
    Container(),

    // settings Screen
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
          height: 80,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF1c56c6),
            unselectedItemColor: Colors.green[700],
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
                   BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_text_fill), label: "messages"),
                   BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: "Schedule"),
                   BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),

            ],
          )),
    );
  }
}
