import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constants/bloc.dart';
import 'core/helper/storage/local_storage.dart';
import 'core/helper/storage/shared_preferences.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  // Get the saved language from local storage
  String? savedLanguageCode =
      await LocalStorageHelper().getItem<String>(key: 'language_code');
  Locale startLocale = savedLanguageCode == 'ar' 
      ? const Locale('ar', 'EG')
      : const Locale('en', 'US');

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', 'EG'),
      ],
      path: 'assets/lang',
      saveLocale: true,
      startLocale: startLocale, // Set the start locale dynamically
      child: blocProvidersList.isNotEmpty
          ? MultiBlocProvider(
              providers: blocProvidersList,
              child: MyApp(),
            )
          : MyApp(),
    ),
  );
}

Future<void> initDependencies() async {
  SharedPreferencesHelper sharedPreferencesHelper = SharedPreferencesHelper();
  LocalStorageHelper localStorageHelper = LocalStorageHelper();
  await Future.wait([
    sharedPreferencesHelper.init(),
    localStorageHelper.init(),
    EasyLocalization.ensureInitialized(),
  ]);
}
