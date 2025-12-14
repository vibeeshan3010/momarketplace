import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:momarketplace/screens/chat/view/chat_screen.dart';
import 'package:momarketplace/screens/home/view/home.dart';
import 'package:momarketplace/screens/login/view/login.dart';
import 'package:momarketplace/screens/productslist/view/products_list.dart';
import 'package:momarketplace/util/app_colors.dart';

import '../screens/product/view/add_products.dart';
import '../util/strings.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  final List<String> _titles = [
    AppStrings.welcome,
    AppStrings.products,
    AppStrings.addproducts,
    AppStrings.chat,
    AppStrings.Login,
  ];

  final List<Widget> _screens = [
    HomeScreen(),
    ProductsList(),
    AddProducts(),
    ChatScreen(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset(
            "assets/icons/menu-alt-2.png",
            height: 75,
            width: 50,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          _titles[_currentIndex],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),


      body: _screens[_currentIndex],

      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        buttonBackgroundColor: Colors.red,
        backgroundColor: isDarkMode ? AppColors.black : AppColors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items:  [
          Image.asset("assets/images/app_image.png",height: 40,width: 40,),
          Icon(Icons.shopping_bag, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.chat, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}

