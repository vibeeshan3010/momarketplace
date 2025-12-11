import 'package:flutter/material.dart';
import 'package:momarketplace/screens/splash/view/splash.dart';
import 'package:momarketplace/theme/theme/theme.dart';
import 'package:momarketplace/widgets/bottomnavigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mo MarketPlace',
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        themeMode:ThemeMode.system,
      home:  SplashScreen()
    );
  }
}

