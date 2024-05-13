import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  int? userId;
  bool isLogin = false;

  Future<void> saveSession(int userId, {bool isLogin = true}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("userId", userId);
    pref.setBool("isLogin", isLogin);
  }

  Future<bool> getSession() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("isLogin") ?? false;
  }

  Future<int> getUserId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt("userId") ?? 0;
  }

  Future<void> deleteSession() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
