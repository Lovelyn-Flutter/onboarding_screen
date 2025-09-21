import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Aeonik',
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppConstants.white,
        height: 1.02,
        letterSpacing: -0.32,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Aeonik',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: AppConstants.white,
        height: 1.2,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Aeonik',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppConstants.white,
        height: 1.4,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Aeonik',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: AppConstants.darkPurple,
        height: 1.2,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Aeonik',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: AppConstants.darkPurple,
        height: 1.2,
      ),
    ),
  );
}
