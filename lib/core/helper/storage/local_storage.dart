import 'package:localstorage/localstorage.dart';

class LocalStorageHelper {
  static const _key = "LOCAL_STORAGE";

  late final LocalStorage _localStorage;
  bool _isInitialized = false;

  LocalStorageHelper._privateConstructor();

  static late final LocalStorageHelper _instance =
      LocalStorageHelper._privateConstructor();

  factory LocalStorageHelper() {
    return _instance;
  }

  Future<void> _initLocalStorage() async {
    _localStorage = LocalStorage(_key);
    await _localStorage.ready;
    _isInitialized = true;
  }

  Future<void> init() async {
    if (!_isInitialized) {
      await _initLocalStorage();
    }
  }

  Future<void> setItem({required String key, required dynamic data}) async {
    if (!_isInitialized) await init();
    try {
      await _localStorage.setItem(key, data);
    } catch (e) {
      print("Failed to set item: $e");
    }
  }

  T? getItem<T>({required String key}) {
    if (!_isInitialized) return null;
    try {
      return _localStorage.getItem(key) as T?;
    } catch (e) {
      print("Failed to get item: $e");
      return null;
    }
  }

  Future<void> clear() async {
    if (!_isInitialized) await init();
    try {
      await _localStorage.clear();
    } catch (e) {
      print("Failed to clear storage: $e");
    }
  }
}
