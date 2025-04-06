import 'package:flutter/material.dart';

class RestaurantThemePreset {
  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  LinearGradient? backgroundGradient;
  String backgroundImagePath;
  RestaurantThemePreset({
    required this.primaryColor,
    required this.secondaryColor,
    required this.tertiaryColor,
    required this.backgroundImagePath,
    this.backgroundGradient,
  });
}
