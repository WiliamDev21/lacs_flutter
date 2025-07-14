import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: AppColors.colorBackgroundLight,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.colorTextDark),
      bodySmall: TextStyle(color: AppColors.colorGrayText),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.colorPrimary,
      secondary: AppColors.colorAccent,
      background: AppColors.colorBackgroundLight,
      error: AppColors.colorError,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.colorPrimary,
      foregroundColor: AppColors.colorWhite,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      color: AppColors.colorWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppColors.borderRadius),
      ),
      elevation: 2,
      shadowColor: AppColors.colorShadowMedium,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppColors.borderRadius),
        borderSide: const BorderSide(color: AppColors.colorBorderLight),
      ),
      filled: true,
      fillColor: AppColors.colorBackgroundLight,
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.sidebarHoverBg),
      trackColor: MaterialStateProperty.all(Colors.black.withOpacity(0.1)),
      radius: const Radius.circular(4),
    ),
  );
}
