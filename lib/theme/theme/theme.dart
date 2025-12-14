import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momarketplace/theme/customThemes/snackbar_theme.dart';

import '../../util/app_colors.dart';
import '../customThemes/icon_theme.dart';
import '../customThemes/text_theme.dart';

class AppTheme{
  AppTheme._();
  static var lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTheme,
    iconTheme: TIconTheme.lightTheme,
    snackBarTheme: TSnackBarTheme.lightTheme,
  );
  static var darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darktheme,
    snackBarTheme: TSnackBarTheme.darkTheme,
    iconTheme: TIconTheme.darkTheme,
  );
}