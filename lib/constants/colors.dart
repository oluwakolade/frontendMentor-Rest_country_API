import 'package:flutter/material.dart';

class HslColor {
  static const HSLColor darkModeElements =
      HSLColor.fromAHSL(1.0, 209, 0.23, 0.22);
  static const HSLColor darkModeBackground =
      HSLColor.fromAHSL(1.0, 207, 0.26, 0.17);
  static const HSLColor darkModeText = HSLColor.fromAHSL(1.0, 0, 0, 0);
  static const HSLColor lightModeElements = HSLColor.fromAHSL(1.0, 0, 0, 0);
  static const HSLColor lightModeBackground =
      HSLColor.fromAHSL(1.0, 0, 0, 0.98);
  static const HSLColor lightModeText = HSLColor.fromAHSL(1.0, 200, 0.15, 0.08);
  static const HSLColor lightModeInput = HSLColor.fromAHSL(1.0, 0, 0, 0.52);
}

class AppColors {
//LIGHT
  static Color lightModeElements = HslColor.lightModeElements.toColor();

  static Color lightModeBackground = HslColor.lightModeBackground.toColor();

  static Color lightModeText = HslColor.lightModeText.toColor();

  static Color lightModeInput = HslColor.lightModeInput.toColor();
  // DARK
  static Color darkModeElements = HslColor.darkModeElements.toColor();
  static Color darKModeBackground = HslColor.darkModeBackground.toColor();

  static Color darkModeText = HslColor.darkModeText.toColor();
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      secondaryHeaderColor: AppColors.lightModeElements,
      scaffoldBackgroundColor: AppColors.lightModeBackground,
      primaryColor: AppColors.lightModeText,
      highlightColor: AppColors.lightModeInput);
  static final ThemeData darkTheme = ThemeData(
      secondaryHeaderColor: AppColors.darkModeElements,
      scaffoldBackgroundColor: AppColors.darKModeBackground,
      primaryColor: AppColors.darkModeText,
      highlightColor: AppColors.lightModeInput);
}
