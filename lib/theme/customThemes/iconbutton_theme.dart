import 'package:flutter/material.dart';
import '../../util/app_colors.dart';

class TIconButtonTheme {
  TIconButtonTheme._();


  static final IconButtonThemeData lightTheme =
  IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: AppColors.red,
      foregroundColor: Colors.white,
      elevation: 2,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),

    ),
  );

  static final IconButtonThemeData darkTheme =
  IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: AppColors.red,
      foregroundColor: Colors.white,
      elevation: 0,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),

    ),
  );
}
