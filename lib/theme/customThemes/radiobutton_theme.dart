import 'package:flutter/material.dart';
import '../../util/app_colors.dart'; // Assuming this file exists

class TRadioButtonTheme {
  TRadioButtonTheme._(); // Private constructor to prevent instantiation

  // Define the common colors you'll use
  // Assuming AppColors.primary is the active color (e.g., blue)
  // Assuming AppColors.secondary is the accent/background color

  // --- 1. Light Theme for Radio Buttons ---
  static final RadioThemeData lightTheme = RadioThemeData(
    // The key property is 'fillColor', which handles the color of the radio button
    fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          // Color when the radio button is selected (Active State)
          return AppColors.red;
        }
        // Color when the radio button is unselected (Inactive State)
        return Colors.grey.shade600;
      },
    ),

    // You can also set the hover and splash color if needed
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          // Light ripple effect on hover
          return AppColors.red.withOpacity(0.1);
        }
        return null; // Use default
      },
    ),
  );

  // --- 2. Dark Theme for Radio Buttons ---
  static final RadioThemeData darkTheme = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          // Color when the radio button is selected (Active State)
          // Often a brighter accent color in dark mode
          return AppColors.red;
        }
        // Color when the radio button is unselected (Inactive State)
        return Colors.grey.shade400;
      },
    ),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          // Light ripple effect on hover
          return AppColors.red.withOpacity(0.1);
        }
        return null; // Use default
      },
    ),
  );
}