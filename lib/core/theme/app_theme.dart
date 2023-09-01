import 'package:flutter/material.dart';
import 'vibe_theme_Extension.dart';

class AppTheme {
  static final appLight = ThemeData(
    brightness: Brightness.light,
    extensions: [
     VibeThemeExtension.initialize(),
    ],
  );
}
