import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  late final SharedPreferences _sharedPreferences;
  bool _isInitialized = false;

  SharedPreferencesHelper._privateConstructor();

  static late final SharedPreferencesHelper _instance =
      SharedPreferencesHelper._privateConstructor();

  factory SharedPreferencesHelper() {
    return _instance;
  }

  Future<void> _initSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _isInitialized = true;
  }

  Future<void> init() async {
    if (!_isInitialized) {
      await _initSharedPreferences();
    }
  }

  Future<void> saveString(String key, String value) async {
    if (!_isInitialized) await init();
    await _sharedPreferences.setString(key, value);
  }

  Future<String?> getString(String key) async {
    if (!_isInitialized) await init();
    return _sharedPreferences.getString(key);
  }

  Future<void> saveBoolean(String key, bool value) async {
    if (!_isInitialized) await init();
    await _sharedPreferences.setBool(key, value);
  }

  Future<bool?> getBoolean(String key) async {
    if (!_isInitialized) await init();
    return _sharedPreferences.getBool(key);
  }

  Future<void> saveInt(String key, int value) async {
    if (!_isInitialized) await init();
    await _sharedPreferences.setInt(key, value);
  }

  Future<int?> getInt(String key) async {
    if (!_isInitialized) await init();
    return _sharedPreferences.getInt(key);
  }

  Future<void> saveDouble(String key, double value) async {
    if (!_isInitialized) await init();
    await _sharedPreferences.setDouble(key, value);
  }

  Future<double?> getDouble(String key) async {
    if (!_isInitialized) await init();
    return _sharedPreferences.getDouble(key);
  }

  Future<bool> clearCache() async {
    if (!_isInitialized) await init();
    return _sharedPreferences.clear();
  }
}
