import 'package:flutter/material.dart';

class AppConstants {
  // Colors
  static const Color primaryPurple = Color(0xFF5925DC);
  static const Color googleBlue = Color(0xFF2E90FA);
  static const Color darkPurple = Color(0xFF2C0A84);
  static const Color lightPurple = Color(0x1A7A5AF8);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Strings
  static const String mainHeading =
      'Connect with\nyour community\nwherever you are';
  static const String appleButtonText = 'Continue with Apple ID';
  static const String googleButtonText = 'Continue with Google';
  static const String emailButtonText = 'Continue with E-mail';
  static const String termsText =
      'By signing up, you accept the Terms of Use and Privacy Policy of how we process your data.';
  static const String languageButtonText = 'English (US)';
  static const String modalTitle = 'Select your preferred language';

  // Languages
  static const List<String> languages = [
    'English',
    'Español',
    'Français',
    'German',
    'Chinese',
    'Japanese',
    'Korean',
  ];

  // Dimensions
  static const double languageButtonWidth = 120;
  static const double languageButtonHeight = 32;
  static const double authButtonHeight = 48;
  static const double modalHeight = 469;
  static const double homeIndicatorWidth = 134;
  static const double homeIndicatorHeight = 5;
}
