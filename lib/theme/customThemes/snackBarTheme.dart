import 'package:flutter/material.dart';

import '../../util/appcolors.dart';

class TSnackBarTheme {
  TSnackBarTheme._();

  static final SnackBarThemeData lightTheme = SnackBarThemeData(
    backgroundColor: AppColors.white,
    actionTextColor: AppColors.red,
    contentTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),
    elevation: 6,
    behavior: SnackBarBehavior.floating,
    closeIconColor: AppColors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );


  static final SnackBarThemeData darkTheme = SnackBarThemeData(
    backgroundColor: AppColors.red,
    actionTextColor: AppColors.white,
    contentTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    elevation: 6,
    behavior: SnackBarBehavior.floating,
    closeIconColor: AppColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}