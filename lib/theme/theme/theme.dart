import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momarketplace/theme/customThemes/snackBarTheme.dart';

import '../../util/appcolors.dart';
import '../customThemes/iconTheme.dart';
import '../customThemes/textTheme.dart';

class AppTheme{
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