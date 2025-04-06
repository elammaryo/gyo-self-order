import 'package:flutter/material.dart';
import 'package:gyo/models/RestaurantThemePreset.dart';
import 'package:gyo/shared/assets.dart';
import 'package:gyo/shared/styles.dart';

extension StringExtension on String {
  String capitalize() {
    return length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : this;
  }
}

final Map<String, RestaurantThemePreset> presetThemes = {
  'chai_shop': RestaurantThemePreset(
    backgroundImagePath: BackgroundImages.burgerBackground,
    primaryColor: Color(0xFFB07150),
    secondaryColor: Color(0xFFEAD2C1),
    tertiaryColor: Colors.white,
    backgroundGradient: LinearGradient(
        colors: [Color(0xFFD6AD8B), Color(0xFF4E342E)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
  ),
  'burger_joint': RestaurantThemePreset(
    backgroundImagePath: BackgroundImages.burgerBackground,
    primaryColor: Color(0xFFFFA726),
    secondaryColor: Color(0xFFFFF3E0),
    tertiaryColor: Colors.black,
    backgroundGradient: orangeGradient,
  ),
  'default': RestaurantThemePreset(
    backgroundImagePath: BackgroundImages.burgerBackground,
    primaryColor: Colors.orange[300]!,
    secondaryColor: Color.fromRGBO(255, 243, 224, 1),
    tertiaryColor: Colors.black,
    backgroundGradient: orangeGradient,
  ),
};
