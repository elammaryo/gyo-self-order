import 'package:flutter/material.dart';
import 'package:gyo/shared/styles.dart';

class ColorSchemeProvider extends ChangeNotifier {
  Color _primary = backgroundOrange;
  Color _secondary = appBarColor;
  Color _tertiary = buttonBeige;

  Color get primary => _primary;
  Color get secondary => _secondary;
  Color get tertiary => _tertiary;
}
