import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momarketplace/route/routes.dart';
import 'package:momarketplace/screens/splash/view/splash.dart';
import 'package:momarketplace/widgets/bottom_navigationbar.dart';

import '../screens/productdetail/model/product_detail_dimension.dart';
import '../screens/productdetail/view/product_detail.dart';

class RouteManager{
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.productsdetails:
        return MaterialPageRoute(builder: (_) => ProductsDetailScreen());
      case Routes.bottomnav:
        return MaterialPageRoute(builder: (_) => CustomBottomNavigationBar());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ),
        );
    }
  }
}