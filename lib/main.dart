import 'package:flutter/material.dart';
import 'package:momarketplace/provider/productdetails_provider.dart';
import 'package:momarketplace/provider/products_provider.dart';
import 'package:momarketplace/route/route_manager.dart';
import 'package:momarketplace/route/routes.dart';
import 'package:provider/provider.dart';

import 'package:momarketplace/screens/splash/view/splash.dart';
import 'package:momarketplace/theme/theme/theme.dart';
import 'package:momarketplace/widgets/bottom_navigationbar.dart';

// import your auth service & routes
// import 'package:momarketplace/services/auth_service.dart';
// import 'package:momarketplace/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProductsProvider()),
          ChangeNotifierProvider(create: (_) => ProductDetailsProvider()),
        ],
        child: MaterialApp(
          initialRoute: Routes.splash,
          onGenerateRoute: RouteManager.generateRoute,
          title: 'Mo MarketPlace',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        ),

    );
  }
}
