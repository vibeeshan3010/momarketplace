import 'package:flutter/material.dart';
import 'package:momarketplace/providers/products_provider.dart';
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
    return WillPopScope(
      onWillPop: () async => false,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProductProvider()),
        ],
        child: MaterialApp(
          // navigatorKey: navigatorKey,
          // initialRoute: Routes.splash,
          // onGenerateRoute: routeManager.generateRoute,
          title: 'Mo MarketPlace',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
