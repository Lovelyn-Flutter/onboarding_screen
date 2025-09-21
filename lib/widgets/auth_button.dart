import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

enum AuthButtonType { apple, google, email }

class AuthButton extends StatelessWidget {
  final AuthButtonType type;
  final VoidCallback onPressed;
  final double screenWidth;

  const AuthButton({
    super.key,
    required this.type,
    required this.onPressed,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: screenWidth,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: AppConstants.authButtonHeight,
        width: 342,
        child: _buildButton(context),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    switch (type) {
      case AuthButtonType.apple:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppConstants.primaryPurple,
            foregroundColor: AppConstants.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.apple,
                size: 18,
                color: AppConstants.white,
              ),
              const SizedBox(width: 12),
              Text(AppConstants.appleButtonText,
                  style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        );

      case AuthButtonType.google:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppConstants.googleBlue,
            foregroundColor: AppConstants.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.g_mobiledata,
                size: 30,
                color: AppConstants.white,
              ),
              const SizedBox(width: 12),
              Text(AppConstants.googleButtonText,
                  style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        );

      case AuthButtonType.email:
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: AppConstants.white,
            side: const BorderSide(color: AppConstants.white, width: 1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.mail_outline,
                  size: 18, color: AppConstants.white),
              const SizedBox(width: 12),
              Text(AppConstants.emailButtonText,
                  style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        );
    }
  }
}
