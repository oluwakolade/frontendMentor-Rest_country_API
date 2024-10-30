import 'package:flutter/material.dart';

// class HslColor {
//   static const HSLColor darkModeElements =
//       HSLColor.fromAHSL(1.0, 209, 0.23, 0.22);
//   static const HSLColor darkModeBackground =
//       HSLColor.fromAHSL(1.0, 207, 0.26, 0.17);
//   static const HSLColor darkModeText = HSLColor.fromAHSL(1.0, 0, 0, 0);
//   static const HSLColor lightModeElements = HSLColor.fromAHSL(1.0, 0, 0, 0);
//   static const HSLColor lightModeBackground =
//       HSLColor.fromAHSL(1.0, 0, 0, 0.98);
//   static const HSLColor lightModeText = HSLColor.fromAHSL(1.0, 200, 0.15, 0.08);
//   static const HSLColor lightModeInput = HSLColor.fromAHSL(1.0, 0, 0, 0.52);
// }

// class AppColors {
//   // LIGHT
//   static Color lightModeElements = HslColor.lightModeElements.toColor();
//   static Color lightModeBackground = HslColor.lightModeBackground.toColor();
//   static Color lightModeText = HslColor.lightModeText.toColor();
//   static Color lightModeInput = HslColor.lightModeInput.toColor();

//   // DARK
//   static Color darkModeElements = HslColor.darkModeElements.toColor();
//   static Color darkModeBackground =
//       HslColor.darkModeBackground.toColor(); // Fixed typo
//   static Color darkModeText = HslColor.darkModeText.toColor();
// }

class AppColors {
  // DARK MODE
  static const Color darkModeElements = Color(0xFF2F3B4D);
  static const Color darkModeBackground = Color(0xFF25303C);
  static const Color darkModeText = Colors.black;

  // LIGHT MODE
  static const Color lightModeElements = Colors.black;
  static const Color lightModeBackground = Color(0xFFFAFAFA);
  static const Color lightModeText = Color(0xFF333333);
  static const Color lightModeInput = Color(0xFF838383);
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    cardColor: Colors.white,
    scaffoldBackgroundColor: AppColors.lightModeBackground,
    primaryColor: AppColors.lightModeElements,
    highlightColor: AppColors.lightModeText,
  );

  static final ThemeData darkTheme = ThemeData(
    cardColor: AppColors.darkModeBackground,
    scaffoldBackgroundColor: AppColors.darkModeElements,
    primaryColor: const Color(0xFFFAFAFA),
    highlightColor: AppColors.lightModeInput, //AppColors.darkModeText,
  );
}
