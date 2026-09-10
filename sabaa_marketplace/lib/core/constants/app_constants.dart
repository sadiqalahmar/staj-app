class AppConstants {
  // App Info
  static const String appName = 'SABAA Marketplace';
  static const String appVersion = '1.0.0';

  // API & Backend
  static const String baseUrl = 'https://api.sabaa.com';
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 30000;

  // Storage Keys
  static const String onboardingCompleted = 'onboarding_completed';
  static const String authToken = 'auth_token';
  static const String userPreferences = 'user_preferences';
  static const String theme = 'theme_mode';
  static const String language = 'language';
  static const String recentSearches = 'recent_searches';
  static const String favorites = 'favorites';
  static const String guestMode = 'guest_mode';

  // Pagination
  static const int pageSize = 20;
  static const int initialPage = 1;

  // Limits
  static const int maxImageUpload = 10;
  static const int maxDescriptionLength = 5000;
  static const int maxTitleLength = 200;
  static const int minPasswordLength = 8;
  static const int maxChatImageSize = 5242880; // 5MB

  // Locations - Default
  static const String defaultCountry = 'Turkey';
  static const String defaultCity = 'Istanbul';

  // Categories
  static const List<String> mainCategories = [
    'Real Estate',
    'Cars & Vehicles',
    'Electronics',
    'Computers & Accessories',
    'Furniture & Home',
    'Fashion',
    'Services',
    'Restaurants & Food',
    'Travel & Experiences',
    'Sports & Hobbies',
    'Baby & Kids',
    'Beauty & Personal Care',
  ];

  // Features
  static const bool enableMockData = true;
  static const bool enableFirebase = false;
  static const bool enableGoogleMaps = false;

  // Animation Durations
  static const Duration splashDuration = Duration(milliseconds: 3000);
  static const Duration pageTransitionDuration = Duration(milliseconds: 300);
  static const Duration cardAnimationDuration = Duration(milliseconds: 400);
  static const Duration buttonAnimationDuration = Duration(milliseconds: 200);
}
