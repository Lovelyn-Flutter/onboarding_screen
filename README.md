# Onboarding App

A Flutter application that implements a pixel-perfect onboarding screen with language selection modal, based on Figma design specifications.

## Screenshots

### Screen 1: Onboarding Welcome Screen

(screenshots/onboarding_screen.jpg)

### Screen 2: Language Selection Modal

(screenshots/language_selection_modal.jpg)

## Features

- ✅ **Responsive Design**: Optimized for 360×800 and 390×844 screen sizes without overflows
- ✅ **Material Design**: Uses Flutter's Material components without third-party UI kits
- ✅ **Custom ThemeData**: Implements proper text styles and color tokens from Figma
- ✅ **Interactive Language Selection**: Modal popup with radio button selection
- ✅ **Pixel-Perfect Implementation**: Matches Figma specifications exactly
- ✅ **Modern Flutter**: Built with Flutter stable version

## Design Specifications

### Colors

- Primary Purple: `#5925DC`
- Google Blue: `#2E90FA`
- Dark Purple: `#2C0A84`
- Light Purple (Overlay): `#7A5AF81A`
- White: `#FFFFFF`
- Black: `#000000`

### Typography

- **Font Family**: Aeonik
- **Main Heading**: 32px, Bold (700), -1% letter spacing, 102% line height
- **Button Text**: 15px, Regular (400), 120% line height
- **Modal Title**: 15px, Regular (400)
- **Terms Text**: 12px, Regular (400), 140% line height

### Component Sizes

- **Screen Dimensions**: 390×844px
- **Language Selector Button**: 120×32px
- **Auth Buttons**: 342×48px (within 56px tall containers)
- **Modal Container**: 390×469px
- **Radio Buttons**: 20×20px

## Setup Instructions

### Prerequisites

- Flutter SDK (>=3.10.0)
- Dart SDK (>=3.0.0)
- Android Studio or VS Code with Flutter extension

### Installation Steps

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd onboarding_app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the application**

   ```bash
   # For development
   flutter run

   # For release build
   flutter run --release
   ```

### Testing on Different Screen Sizes

The app is responsive and tested for:

- **360×800** (Small phones)
- **390×844** (Standard phones)

To test different screen sizes:

```bash
# Android emulator with custom resolution
flutter emulators --launch <emulator_id>

# iOS simulator
open -a Simulator
```

## Project Structure

lib/
├── main.dart # App entry point
├── constants/
│ └── app_constants.dart # Colors, dimensions, strings
├── theme/
│ └── app_theme.dart # Theme configuration
├── screens/
│ └── onboarding_screen.dart # Main onboarding page
└── widgets/
├── auth_button.dart # Reusable authentication buttons
├── background_container.dart # Background image
├── language_selector_button.dart # Top language selection button
└── language_selection_modal.dart # Language selection modal
assets/
├── images/
│ └── Onboarding Image.png # Background image
└── fonts/
├── AeonikTRIAL-Light.otf
├── AeonikTRIAL-Regular.otf
├── AeonikTRIAL-Bold.otf
├── AeonikTRIAL-LightItalic.otf
├── AeonikTRIAL-RegularItalic.otf
└── AeonikTRIAL-BoldItalic.otf
screenshots/
├── onboarding_screen.jpg # Screenshot comparisons
└── language_selection_modal.jpg

## Technical Implementation

### Responsive Design Strategy

- Uses `LayoutBuilder` for dynamic screen size adaptation
- Proportional positioning based on screen width/height ratios
- No hardcoded absolute positions that could cause overflows

### State Management

- Simple `StatefulWidget` with local state for modal visibility
- Language selection state managed in parent component
- Clean separation between UI and state logic

### Custom Theme Implementation

- Centralized color tokens in `AppTheme` class
- Reusable button styles through theme configuration

## Development Time

**Total Development Time**: ~8 hours

## Flutter/Dart Versions

- **Flutter**: 3.10.0 or higher
- **Dart**: 3.0.0 or higher
- **Target SDK**: Android 21+ / iOS 11.0+

## Technical Notes

- All dimensions and typography follow Figma specifications exactly
- Minor visual differences may occur due to platform rendering differences between Figma's web renderer and Flutter's Skia engine
- Font loading and device pixel density can affect visual appearance while maintaining specification accuracy

## License

This project is created for demonstration purposes.
