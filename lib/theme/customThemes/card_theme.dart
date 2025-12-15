import 'package:flutter/material.dart';
import '../../util/app_colors.dart';

class TCardTheme {
  TCardTheme._();


  static final CardThemeData lightTheme = CardThemeData(
    color: AppColors.white,
    elevation: 0,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );


  static final CardThemeData darkTheme = CardThemeData(
    color: AppColors.red,
    elevation: 0,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
