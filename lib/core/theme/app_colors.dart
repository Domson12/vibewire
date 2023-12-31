import 'package:flutter/cupertino.dart';

class AppColors {
  static const primary = Color(0xFF8165EA);
  static const primaryDark = Color(0xFF8165EA);
  static const secondary = Color(0xFF7E57C2);
  static const primaryLight = Color(0xFF64B5F6);
  static const accent = Color(0xFFFF4081);
  static const accentLight = Color(0xFFFF80AB);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const grey = Color(0xFF9E9E9E);
  static const greyLight = Color(0xFFEEEEEE);
  static const greyDark = Color(0xFF616161);
  static const greyDarker = Color(0xFF212121);
  static const greyDarkest = Color(0xFF424242);
  static const greyLightest = Color(0xFFFAFAFA);
  static const greyAccent = Color(0xFFE0E0E0);
  static const red = Color(0xFFE53935);
  static const redLight = Color(0xFFFFCDD2);
  static const redDark = Color(0xFFC62828);
  static const green = Color(0xFF43A047);
  static const greenLight = Color(0xFFC8E6C9);
  static const greenDark = Color(0xFF2E7D32);
  static const blue = Color(0xFF2196F3);
  static const blueLight = Color(0xFFBBDEFB);
  static const blueDark = Color(0xFF1565C0);
  static const yellow = Color(0xFFFFC107);
  static const yellowLight = Color(0xFFFFF59D);
  static const yellowDark = Color(0xFFFFA000);
  static const orange = Color(0xFFFF9800);
  static const orangeLight = Color(0xFFFFE0B2);
  static const orangeDark = Color(0xFFF57C00);
  static const purple = Color(0xFF9C27B0);
  static const purpleLight = Color(0xFFE1BEE7);
  static const purpleDark = Color(0xFF6A1B9A);
  static const brown = Color(0xFF795548);
  static const brownLight = Color(0xFFD7CCC8);
  static const brownDark = Color(0xFF3E2723);
  static const pink = Color(0xFFE91E63);
  static const pinkLight = Color(0xFFF8BBD0);
  static const pinkDark = Color(0xFFC2185B);
  static const indigo = Color(0xFF3F51B5);
  static LinearGradient rgbBackground = const LinearGradient(
    colors: [Color(0xFFC40AAE), Color(0xFF38B384)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    transform: GradientRotation(309 * (3.14159265 / 180.0)),
  );
}
