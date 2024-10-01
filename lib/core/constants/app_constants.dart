import 'dart:io' show Platform;

class AppConstants {
  // User-related keys
  static const String userKey = "USER";
  
  // Platform-related constants
  static final bool isAndroid = Platform.isAndroid;
  static final bool isIOS = Platform.isIOS;

  // App-related constants
  static const String appName = "MyApp";
  static const String appVersion = "1.0.0";

  // Error messages
  static const String networkError = "Please check your internet connection.";
  static const String generalError = "Something went wrong. Please try again later.";

  // Feature toggles
  static const bool enableFeatureX = true;

  // Other constants
  static const String defaultLanguage = "en";
  static const String dateFormat = "yyyy-MM-dd";
}
