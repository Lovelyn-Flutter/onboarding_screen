import 'package:flutter/material.dart';
import '../widgets/background_container.dart';
import '../widgets/language_selector_button.dart';
import '../widgets/auth_button.dart';
import '../widgets/language_selection_modal.dart';
import '../constants/app_constants.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool showLanguageModal = false;
  String selectedLanguage = 'English';

  void _toggleLanguageModal() {
    setState(() {
      showLanguageModal = !showLanguageModal;
    });
  }

  void _selectLanguage(String language) {
    setState(() {
      selectedLanguage = language;
      showLanguageModal = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;

          return Stack(
            children: [
              const BackgroundContainer(),
              SafeArea(
                child: Column(
                  children: [
                    LanguageSelectorButton(
                      onTap: _toggleLanguageModal,
                      screenWidth: screenWidth,
                      selectedLanguage: selectedLanguage,
                    ),
                    const Spacer(),
                    _buildBottomContent(context, screenWidth),
                  ],
                ),
              ),
              _buildHomeIndicator(screenWidth),
              if (showLanguageModal)
                LanguageSelectionModal(
                  onClose: _toggleLanguageModal,
                  selectedLanguage: selectedLanguage,
                  onLanguageSelected: _selectLanguage,
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBottomContent(BuildContext context, double screenWidth) {
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildMainHeading(context),
          const SizedBox(height: 12),
          _buildAuthButtons(screenWidth),
          const SizedBox(height: 8),
          _buildTermsText(context, screenWidth),
        ],
      ),
    );
  }

  Widget _buildMainHeading(BuildContext context) {
    return Container(
      width: 390,
      height: 115,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: SizedBox(
        width: 265,
        height: 99,
        child: Text(
          AppConstants.mainHeading,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }

  Widget _buildAuthButtons(double screenWidth) {
    return Column(
      children: [
        AuthButton(
          type: AuthButtonType.apple,
          onPressed: () {},
          screenWidth: screenWidth,
        ),
        const SizedBox(height: 8),
        AuthButton(
          type: AuthButtonType.google,
          onPressed: () {},
          screenWidth: screenWidth,
        ),
        const SizedBox(height: 8),
        AuthButton(
          type: AuthButtonType.email,
          onPressed: () {},
          screenWidth: screenWidth,
        ),
      ],
    );
  }

  Widget _buildTermsText(BuildContext context, double screenWidth) {
    return SizedBox(
      height: 84,
      width: screenWidth,
      child: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.all(8),
            child: Center(
              child: SizedBox(
                width: 270,
                child: Text(
                  AppConstants.termsText,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 34),
        ],
      ),
    );
  }

  Widget _buildHomeIndicator(double screenWidth) {
    return Positioned(
      bottom: 21,
      left: screenWidth * 128 / 390,
      child: Container(
        width: AppConstants.homeIndicatorWidth,
        height: AppConstants.homeIndicatorHeight,
        decoration: BoxDecoration(
          color: AppConstants.white,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
