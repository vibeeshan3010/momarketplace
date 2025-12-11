import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:momarketplace/screens/categories/view/categories.dart';
import 'package:momarketplace/screens/chat/view/chatscreen.dart';
import 'package:momarketplace/screens/home/view/home.dart';
import 'package:momarketplace/screens/login/view/login.dart';
import 'package:momarketplace/util/appcolors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    Categories(),
    ChatScreen(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          Icon(Icons.home, size: 30,color: Colors.white),
          Icon(Icons.category, size: 30,color: Colors.white),
          Icon(Icons.chat, size: 30,color: Colors.white),
          Icon(Icons.person, size: 30,color: Colors.white),
        ],
      ),
    );
  }
}
