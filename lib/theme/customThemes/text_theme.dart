import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/app_colors.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTheme = TextTheme(
    headlineLarge: GoogleFonts.inter(
        color: AppColors.black, fontSize: 26, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.inter(
        color: AppColors.black, fontSize: 22, fontWeight: FontWeight.w600),
    headlineSmall: GoogleFonts.inter(
        color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600),
    titleLarge: GoogleFonts.inter(
        color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w500),
    titleMedium: GoogleFonts.inter(
        color: AppColors.black,
        fontSize: 15,
        fontWeight: FontWeight.normal),
    titleSmall: GoogleFonts.inter(
        color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w500),
    bodyLarge: GoogleFonts.inter(
        color: AppColors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600),
    bodyMedium: GoogleFonts.inter(
        color: Color(0xFF656565), fontSize: 14, fontWeight: FontWeight.w500),
    bodySmall: GoogleFonts.inter(
        color: AppColors.black, fontSize: 12, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.inter(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500),
    labelSmall: GoogleFonts.inter(
        color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w500),
    labelMedium: GoogleFonts.inter(
        color: AppColors.black.withOpacity(0.5),
        fontSize: 12,
        fontWeight: FontWeight.normal),
    displayLarge: GoogleFonts.inter(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
    displayMedium: GoogleFonts.inter(
        color: AppColors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600),
    displaySmall: GoogleFonts.inter(
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400),
  );

  static TextTheme darktheme = TextTheme(
    headlineLarge: GoogleFonts.inter(
        color: AppColors.white, fontSize: 26, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.inter(
        color: AppColors.white, fontSize: 22, fontWeight: FontWeight.w600),
    headlineSmall: GoogleFonts.inter(
        color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w600),
    titleLarge: GoogleFonts.inter(
        color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
    titleMedium: GoogleFonts.inter(
        color: AppColors.white,
        fontSize: 15,
        fontWeight: FontWeight.normal),
    titleSmall: GoogleFonts.inter(
        color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
    bodyLarge: GoogleFonts.inter(
        color: AppColors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600),
    bodyMedium: GoogleFonts.inter(
        color: Color(0xFF656565), fontSize: 14, fontWeight: FontWeight.w500),
    bodySmall: GoogleFonts.inter(
        color: AppColors.white, fontSize: 12, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.inter(
        color: AppColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
    labelSmall: GoogleFonts.inter(
        color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w500),
    labelMedium: GoogleFonts.inter(
        color: AppColors.white.withOpacity(0.5),
        fontSize: 12,
        fontWeight: FontWeight.normal),
    displayLarge: GoogleFonts.inter(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
    displayMedium: GoogleFonts.inter(
        color: AppColors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600),
    displaySmall: GoogleFonts.inter(
        color: AppColors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400),
  );
}