import 'dart:ui';

import 'package:flutter/material.dart';

extension XTheme on ThemeData {
  VibeThemeExtension get xTextTheme => extension<VibeThemeExtension>()!;
}

class VibeThemeExtension extends ThemeExtension<VibeThemeExtension> {
  VibeThemeExtension({
    required this.display0,
    required this.display1,
    required this.h0,
    required this.h1,
    required this.h2,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
    required this.body5,
    required this.notification,
    required this.contact,
    required this.date,
  });

  final TextStyle display0;

  final TextStyle display1;

  final TextStyle body1;

  final TextStyle body2;

  final TextStyle body3;

  final TextStyle body4;

  final TextStyle body5;

  final TextStyle h0;

  final TextStyle h1;

  final TextStyle h2;

  final TextStyle contact;

  final TextStyle date;

  final TextStyle notification;

  factory VibeThemeExtension.initialize() => VibeThemeExtension(
        display0: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 16,
          height: 1.14,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: Color(0xFF000000),
        ),
        display1: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 16,
          height: 1.14,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: Color(0xFF000000),
        ),
        h0: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 16,
          height: 1.14,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: Color(0xFF000000),
        ),
        h1: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 16,
          height: 1.14,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: Color(0xFF000000),
        ),
        h2: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 16,
          height: 1.14,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: Color(0xFF000000),
        ),
        body1: const TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            height: 1.14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        body2: const TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            height: 1.14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        body3: const TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            height: 1.14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        body4: const TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            height: 1.14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        body5: const TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            height: 1.14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        notification: const TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            height: 1.14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        contact: const TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            height: 1.14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        date: const TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            height: 1.14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
      );

  @override
  ThemeExtension<VibeThemeExtension> copyWith() {
    TextStyle? display0;
    TextStyle? display1;
    TextStyle? h0;
    TextStyle? h1;
    TextStyle? h2;
    TextStyle? body1;
    TextStyle? body2;
    TextStyle? body3;
    TextStyle? body4;
    TextStyle? body5;
    TextStyle? notification;
    TextStyle? contact;
    TextStyle? date;
    return VibeThemeExtension(
      display0: display0 ?? this.display0,
      display1: display1 ?? this.display1,
      h0: h0 ?? this.h0,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
      body4: body4 ?? this.body4,
      body5: body5 ?? this.body5,
      notification: notification ?? this.notification,
      contact: contact ?? this.contact,
      date: date ?? this.date,
    );
  }

  @override
  ThemeExtension<VibeThemeExtension> lerp(
      covariant ThemeExtension<VibeThemeExtension>? other, double t) {
    if (other == null) return copyWith();
    return other;
    }
  }

