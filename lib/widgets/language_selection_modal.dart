import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class LanguageSelectionModal extends StatelessWidget {
  final VoidCallback onClose;
  final String selectedLanguage;
  final Function(String) onLanguageSelected;

  const LanguageSelectionModal({
    super.key,
    required this.onClose,
    required this.selectedLanguage,
    required this.onLanguageSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClose,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black54,
        child: GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: double.infinity,
                height: AppConstants.modalHeight,
                decoration: const BoxDecoration(
                  color: AppConstants.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    _buildHandleBar(),
                    _buildContent(context),
                    _buildHomeIndicator(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHandleBar() {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        width: 52,
        height: 4,
        decoration: BoxDecoration(
          color: AppConstants.lightPurple,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      width: 358,
      height: 395,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildHeader(context),
          _buildDivider(),
          _buildLanguageList(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 32,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 262,
            height: 18,
            child: Text(
              AppConstants.modalTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          GestureDetector(
            onTap: onClose,
            child: Container(
              width: 24,
              height: 24,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: const Icon(Icons.close,
                  size: 20, color: AppConstants.darkPurple),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: double.infinity,
      height: 1,
      color: AppConstants.lightPurple,
      margin: const EdgeInsets.symmetric(vertical: 8),
    );
  }

  Widget _buildLanguageList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: AppConstants.languages.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final language = AppConstants.languages[index];
          final isSelected = language == selectedLanguage;

          return GestureDetector(
            onTap: () => onLanguageSelected(language),
            child: Container(
              width: 358,
              height: 36,
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(language, style: Theme.of(context).textTheme.bodyMedium),
                  _buildRadioButton(isSelected),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildRadioButton(bool isSelected) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: AppConstants.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppConstants.darkPurple, width: 1),
      ),
      child: isSelected
          ? Center(
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: AppConstants.darkPurple,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            )
          : null,
    );
  }

  Widget _buildHomeIndicator() {
    return SizedBox(
      height: 34,
      width: double.infinity,
      child: Center(
        child: Container(
          width: AppConstants.homeIndicatorWidth,
          height: AppConstants.homeIndicatorHeight,
          decoration: BoxDecoration(
            color: AppConstants.darkPurple,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
