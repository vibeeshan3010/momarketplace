import 'package:flutter/material.dart';

import '../../util/appcolors.dart';

class TIconTheme {
  TIconTheme._();

  static final IconThemeData lightTheme = IconThemeData(
    color: AppColors.black,
    size: 24,
  );


  static   IconThemeData darkTheme = IconThemeData(
    color: AppColors.white,
    size: 24,
  );
}