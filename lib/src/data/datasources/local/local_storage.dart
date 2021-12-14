import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  late final SharedPreferences pref;
  
  Future<void> init() async {
    pref = await SharedPreferences.getInstance();
  }

  Future<void> write(String key, String value) async {
    await pref.setString(key, value);
  }

  String? read(String key) {
    return pref.getString(key);
  }

  Future<bool> remove(String key) async {
    return await pref.remove(key);
  }
}
