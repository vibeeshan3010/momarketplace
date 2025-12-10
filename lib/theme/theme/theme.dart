import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/appcolors.dart';
import '../customThemes/textTheme.dart';

class AppTheme{
  static var lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTheme,
  );
  static var darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darktheme,
  );
}