import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class Validators {
  static String? validateEmptyField(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    return null;
  }

  static String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      return S.of(context).invalid_email;
    }
    return null;
  }

  static String? validatePassword(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    } else if (value.length < 6) {
      return S.of(context).password_too_short;
    } else if (!value.contains(
      RegExp(r'[0-9]'),
    )) {
      return S.of(context).add_numbers;
    } else if (!value.contains(
      RegExp(r'[A-Z]'),
    )) {
      return S.of(context).add_capital_letters;
    } else if (!value.contains(
      RegExp(r'[a-z]'),
    )) {
      return S.of(context).add_lowercase;
    } else if (!value.contains(
      RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
    )) {
      return S.of(context).add_special_char;
    }
    return null;
  }

  static String? validateConfirmPassword(
      String? value, BuildContext context, String password) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    } else if (value != password) {
      return S.of(context).password_not_the_same;
    }
    return null;
  }

  static String? validateName(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    if (value.length < 3) {
      return S.of(context).invalid_name;
    }
    if (!RegExp(r"^[A-Z][a-zA-Z]*$").hasMatch(value)) {
      return S.of(context).upper_case_letter;
    }
    return null;
  }

  static String? validatePhone(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    if (!RegExp(r"^[0-9]{9}$").hasMatch(value)) {
      return S.of(context).invalid_phone;
    }
    return null;
  }

  static String? validateImage(Uint8List? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    return null;
  }
}
