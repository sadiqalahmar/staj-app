# SABAA Marketplace

A premium classified marketplace mobile application built with Flutter. SABAA Marketplace enables users to buy, sell, and browse classified listings with a modern, intuitive interface.

## Features

- **User Authentication** - Secure Firebase authentication with email/password support
- **Classified Listings** - Browse, create, and manage classified ads
- **Image Management** - Pick, crop, and upload product images
- **Location Services** - Integrated Google Maps for location-based browsing
- **Push Notifications** - Real-time notifications via Firebase Messaging
- **Offline Support** - Local caching with Hive and Shared Preferences
- **Multi-language Support** - Localization ready with intl package
- **Video Support** - Video player integration for rich media listings
- **State Management** - Modern reactive architecture with Riverpod
- **Navigation** - Type-safe routing with GoRouter

## Tech Stack

### Framework & Language
- **Flutter** ^3.11.5
- **Dart**

### State Management
- Riverpod 2.4.0
- Flutter Riverpod 2.4.0

### Backend & Services
- Firebase Core 2.24.0
- Firebase Auth 4.14.0
- Cloud Firestore 4.13.0
- Firebase Storage 11.5.0
- Firebase Messaging 14.7.0

### UI & Design
- Material Design 3
- Google Fonts
- Cupertino Icons

### Storage & Caching
- Hive (local database)
- Shared Preferences
- Cached Network Image

### Localization
- Flutter Localizations
- intl 0.20.2

### Navigation
- GoRouter 13.0.0

### Networking
- HTTP 1.1.0
- Dio 5.3.0

### Location & Maps
- Google Maps Flutter 2.5.0
- Geolocator 9.0.2

### Media
- Image Picker 1.0.7
- Image Cropper 5.0.1
- Video Player 2.8.1

### Utilities
- UUID 4.0.0
- URL Launcher 6.1.14
- Share Plus 7.2.0
- Permission Handler 11.4.0

## Project Structure

```
sabaa_marketplace/
├── lib/              # Main source code
├── assets/
│   ├── images/       # App images
│   ├── icons/        # Icon assets
│   ├── logos/        # Logo assets
│   └── fonts/        # Custom fonts (Poppins, Inter)
├── android/          # Android native code
├── ios/              # iOS native code
├── macos/            # macOS native code
├── windows/          # Windows native code
├── web/              # Web platform code
├── linux/            # Linux native code
├── test/             # Test files
└── pubspec.yaml      # Dependencies configuration
```

## Getting Started

### Prerequisites
- Flutter SDK ^3.11.5
- Dart SDK (included with Flutter)
- Firebase project configured
- Google Maps API key

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd sabaa_marketplace
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**
   - Set up Firebase project at [Firebase Console](https://console.firebase.google.com)
   - Download configuration files for each platform
   - Place `google-services.json` in `android/app/`
   - Place `GoogleService-Info.plist` in `ios/Runner/`

4. **Configure Google Maps**
   - Obtain API key from [Google Cloud Console](https://console.cloud.google.com)
   - Add to Android manifest and iOS Info.plist

5. **Generate code (Hive models)**
   ```bash
   flutter pub run build_runner build
   ```

### Running the App

```bash
# Debug mode
flutter run

# Release mode
flutter run --release

# Specific platform
flutter run -d chrome          # Web
flutter run -d macos           # macOS
flutter run -d windows         # Windows
flutter run -d linux           # Linux
```

## Development

### Code Generation
This project uses `build_runner` for Hive model generation:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Testing
```bash
flutter test
```

### Build Flavors (if configured)
```bash
flutter run --flavor development
flutter run --flavor production
```

## Key Dependencies & Usage

### Firebase
- Authentication and user management
- Cloud Firestore for database
- Firebase Storage for image/file storage
- Firebase Messaging for push notifications

### Riverpod
- State management and reactive data flow
- Dependency injection
- Provider pattern implementation

### GoRouter
- Type-safe navigation
- Deep linking support
- Named routes

### Hive
- Local persistent storage
- Zero-copy reading
- Type-safe queries

## Platform Support

- ✅ iOS (iOS 11.0+)
- ✅ Android (API 21+)
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## Custom Fonts

The app includes two custom font families:

- **Poppins** (weights: 400, 500, 600, 700)
- **Inter** (weights: 400, 500, 600, 700)

## Configuration

Key configuration files:
- `pubspec.yaml` - Dependency and asset configuration
- `local.properties` - Local build properties (Android)
- Platform-specific config files in each platform directory

## Contributing

When contributing to this project:
1. Follow Flutter style guidelines
2. Use meaningful commit messages
3. Test on multiple platforms
4. Update documentation as needed

## Troubleshooting

### Common Issues

**Build errors after dependency update:**
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

**Firebase configuration issues:**
- Verify configuration files are in correct locations
- Check Firebase project settings match your app
- Ensure API keys have proper permissions

**Google Maps not showing:**
- Verify API key is correctly configured for each platform
- Check API key restrictions in Google Cloud Console
- Ensure maps API is enabled

## Version

Current version: **1.0.0+1**

## License

This project is proprietary. All rights reserved.

## Support

For issues or questions, please contact the development team.
