import 'package:shared_preferences/shared_preferences.dart';

// Help : sp = SharedPreferences
class UserPreferences {
  // Preferences singleton
  static SharedPreferences? _preferences;

  // Key values
  static const _keyUsername = 'username';
  static const _keyImage = 'image';

  // Inializing sp with getInstance Method
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  // Username methods
  static Future setUsername(String username) async =>
      await _preferences!.setString(_keyUsername, username);

  static String? getUsername() => _preferences!.getString(_keyUsername);

  // Image methods
  static Future setImage(String imagePath) async =>
      await _preferences!.setString(_keyImage, imagePath);

  static String? getImage() => _preferences!.getString(_keyImage);
}
