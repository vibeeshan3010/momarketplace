import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momarketplace/theme/customThemes/button_theme.dart';
import 'package:momarketplace/theme/customThemes/iconbutton_theme.dart';
import 'package:momarketplace/theme/customThemes/radiobutton_theme.dart';
import 'package:momarketplace/theme/customThemes/snackbar_theme.dart';

import '../../util/app_colors.dart';
import '../customThemes/card_theme.dart';
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
    elevatedButtonTheme: TElevatedButtonTheme.lightTheme,
    snackBarTheme: TSnackBarTheme.lightTheme,
    cardTheme: TCardTheme.lightTheme,
    iconButtonTheme: TIconButtonTheme.lightTheme,
      radioTheme: TRadioButtonTheme.lightTheme,
  );
  static var darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darktheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightTheme,
    snackBarTheme: TSnackBarTheme.darkTheme,
    cardTheme: TCardTheme.lightTheme,
    iconTheme: TIconTheme.darkTheme,
      iconButtonTheme: TIconButtonTheme.darkTheme,
    radioTheme: TRadioButtonTheme.darkTheme,

  );
}