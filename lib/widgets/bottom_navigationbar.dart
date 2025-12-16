import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:momarketplace/screens/chat/view/chat_screen.dart';
import 'package:momarketplace/screens/home/view/home.dart';
import 'package:momarketplace/screens/login/view/login.dart';
import 'package:momarketplace/screens/productslist/view/products_list.dart';
import 'package:momarketplace/util/app_colors.dart';

import '../screens/addproducts/view/add_products.dart';
import '../util/strings.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  bool ispoliciesclicked = false;
  bool isguidelinesclicked = false;
  bool isdeliveryclicked = false;

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
      onDrawerChanged: (isOpen) {
        if (!isOpen) {
          setState(() {
            isdeliveryclicked = false;
            isguidelinesclicked = false;
            ispoliciesclicked = false;
          });
        }
      },
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),

              // Drawer items (scrollable)
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    ListTile(
                      title: Text(
                        AppStrings.needhelp,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: AppColors.red,
                      ),
                      onTap: () => Navigator.pop(context),
                    ),

                    ExpansionTile(
                      title: Text(
                        AppStrings.policies,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),

                      onExpansionChanged: (expanded) {
                        setState(() {
                          ispoliciesclicked = expanded;
                        });
                      },

                      trailing: Icon(
                        ispoliciesclicked
                            ? Icons.keyboard_arrow_up_outlined
                            : Icons.keyboard_arrow_down_outlined,
                        color: AppColors.red,
                      ),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),

                      childrenPadding: const EdgeInsets.only(left: 16),

                      children: [
                        ListTile(
                          title:  Text(AppStrings.privacypolicy,style: Theme.of(context).textTheme.bodySmall),
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTile(
                          title: Text(AppStrings.refundpolicy,style: Theme.of(context).textTheme.bodySmall),
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTile(
                          title: Text(AppStrings.termsandconditions,style: Theme.of(context).textTheme.bodySmall),
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),



                    ExpansionTile(
                      title: Text(
                        AppStrings.guidelines,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      trailing: Icon(
                        isguidelinesclicked?
                        Icons.keyboard_arrow_up_outlined:Icons.keyboard_arrow_down_outlined,
                        color: AppColors.red,
                      ),
                      onExpansionChanged: (expanded) {
                        setState(() {
                          isguidelinesclicked = expanded;
                        });
                      },
                      shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      childrenPadding: const EdgeInsets.only(left: 16),
                      children: [
                        ListTile(
                          title:  Text(AppStrings.commguidelines,style: Theme.of(context).textTheme.bodySmall),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text(AppStrings.listingrules,style: Theme.of(context).textTheme.bodySmall),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),

                      ],
                    ),

                    ExpansionTile(
                      title: Text(
                        AppStrings.delivery,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      trailing: Icon(
                        isdeliveryclicked ?
                        Icons.keyboard_arrow_up_outlined:Icons.keyboard_arrow_down_outlined,
                        color: AppColors.red,
                      ),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),

                      onExpansionChanged: (expanded) {
                        setState(() {
                          isdeliveryclicked = expanded;
                        });
                      },
                      childrenPadding: const EdgeInsets.only(left: 16),
                      children: [
                        ListTile(
                          title: Text(AppStrings.shippingguide,style: Theme.of(context).textTheme.bodySmall),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text(AppStrings.packageanddelivery,style: Theme.of(context).textTheme.bodySmall),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text(AppStrings.prohibitedlist,style: Theme.of(context).textTheme.bodySmall),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),

                      ],
                    ),

                    ListTile(
                      title: Text(
                        AppStrings.faq,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: AppColors.red,
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),

              // Bottom image
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  "assets/images/mo.png",
                  height: 100,
                  width: 100,
                ),
              ),
              Text(AppStrings.morelikeit,style: Theme.of(context).textTheme.displaySmall,),
              SizedBox(height: 10,),
              Text(AppStrings.version,style: Theme.of(context).textTheme.displaySmall,)
            ],
          ),
        ),
      ),


      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Image.asset(
                  "assets/icons/menu-alt-2.png",
                  height: 75,
                  width: 50,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            );
          },
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

