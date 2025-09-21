import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class LanguageSelectorButton extends StatelessWidget {
  final VoidCallback onTap;
  final double screenWidth;
  final String selectedLanguage;

  final Map<String, String> languageCountryCodes = const {
    'English': 'US',
    'Español': 'ES',
    'Français': 'FR',
    'German': 'DE',
    'Chinese': 'CN',
    'Japanese': 'JP',
    'Korean': 'KR',
  };

  const LanguageSelectorButton({
    super.key,
    required this.onTap,
    required this.screenWidth,
    required this.selectedLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.only(top: 48),
      child: Row(
        children: [
          SizedBox(width: screenWidth * 135 / 390),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: AppConstants.languageButtonWidth,
              height: AppConstants.languageButtonHeight,
              decoration: BoxDecoration(
                border: Border.all(color: AppConstants.white, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$selectedLanguage (${languageCountryCodes[selectedLanguage] ?? 'US'})',
                    style: const TextStyle(
                      fontFamily: 'Aeonik',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppConstants.white,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppConstants.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
