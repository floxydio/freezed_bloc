import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  Future<void> setString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<void> removeAllKey() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
