import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../constants/image_paths.dart';
import 'storage/shared_preferences.dart';

class LanguageHelper with ChangeNotifier {
  Locale _currentLocale = const Locale('ar', 'EG');

  Locale get currentLocale => _currentLocale;

  List<Locale> supportedLocales = [
    const Locale('en', 'US'),
    const Locale('ar', 'EG'),
  ];

  Future<void> initializeLocale(BuildContext context) async {
    String? languageCode = await SharedPreferencesHelper().getString('languageCode');
    if (languageCode != null) {
      _currentLocale = Locale(languageCode);
      context.setLocale(_currentLocale);
      notifyListeners();
    }
  }

  void toggleLanguage(BuildContext context) async {
    int currentIndex = supportedLocales.indexOf(_currentLocale);
    int nextIndex = (currentIndex + 1) % supportedLocales.length;
    _currentLocale = supportedLocales[nextIndex];
    context.setLocale(_currentLocale);

    await SharedPreferencesHelper().saveString('languageCode', _currentLocale.languageCode);

    notifyListeners();
  }

 
}
