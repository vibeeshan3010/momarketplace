import 'package:flutter/material.dart';
import 'package:momarketplace/screens/splash/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mo MarketPlace',
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home:  SplashScreen()
    );
  }
}

