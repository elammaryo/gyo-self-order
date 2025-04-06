import 'package:flutter/material.dart';
import '../RestaurantThemePreset.dart';
import '../../../shared/helper.dart';

class ThemeProvider extends ChangeNotifier {
  RestaurantThemePreset _themePreset = presetThemes['default']!;
  RestaurantThemePreset get themePreset => _themePreset;

  void setThemePreset(final RestaurantThemePreset preset) {
    _themePreset = preset;
    notifyListeners();
  }
}
