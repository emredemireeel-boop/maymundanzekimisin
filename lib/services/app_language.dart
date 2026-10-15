import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Controls the language of the game independently from the Play Store locale.
class AppLanguage extends ChangeNotifier {
  AppLanguage._();

  static final AppLanguage instance = AppLanguage._();
  static const supportedCodes = <String>['tr', 'en', 'es'];
  static const _preferenceKey = 'app_language';

  String? _selectedCode;

  String get code {
    if (_selectedCode != null) return _selectedCode!;
    final deviceCode =
        WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    return supportedCodes.contains(deviceCode) ? deviceCode : 'en';
  }

  Locale get locale => Locale(code);

  Future<void> load() async {
    final preferences = await SharedPreferences.getInstance();
    final saved = preferences.getString(_preferenceKey);
    if (saved != null && supportedCodes.contains(saved)) {
      _selectedCode = saved;
      notifyListeners();
    }
  }

  Future<void> select(String languageCode) async {
    if (!supportedCodes.contains(languageCode)) {
      throw ArgumentError.value(languageCode, 'languageCode');
    }
    if (_selectedCode == languageCode) return;
    _selectedCode = languageCode;
    notifyListeners();
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(_preferenceKey, languageCode);
  }
}
