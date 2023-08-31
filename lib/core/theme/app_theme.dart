import 'package:flutter/material.dart';
import 'package:vibewire/core/theme/vibe_theme_Extension.dart';

class AppTheme {
  static final appLight = ThemeData(
    brightness: Brightness.light,
    extensions: [
     VibeThemeExtension.initialize(),
    ],
  );
}
